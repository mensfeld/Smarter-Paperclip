require  "paperclip"
require 'fileutils'
# Some usefull paperclip extensions
module Paperclip
  module ClassMethods

    # Picture minimal resolution validation
    # Parameters
    # - name - name of file field that should be validated
    # - width   - minimal picture width
    # - height  - minimal picture height
    # - message - error message - can be a Proc
    def validates_attachment_minimum_resolution name, options = {}
      validation_options = options.dup
      validates_each(name, validation_options) do |record, attr, value|
        unless record.errors.include?(name)
          m_width  = options[:width]
          m_height = options[:height]
          message = options[:message] || "must be bigger."
          message = message.call if message.is_a?(Proc)
          image = record.send(name)
          if image && image.queued_for_write[:original]
            dimensions = Paperclip::Geometry.from_file(image.queued_for_write[:original])
            if dimensions.width < m_width || dimensions.height < m_height
              if record.errors.method(:add).arity == -2
                record.errors.add(:"#{name}", message)
              else
                record.errors.add(:"#{name}", :inclusion, :default => options[:message], :value => value)
              end
            end
          end
        end
      end
    end

    # It force attachment validation only if attachment (file) was send
    # if file was not send - it will not validate it (will pass without errors)
    def validates_attachment_if_included name, options = {}
      options[:if] = Proc.new { |imports| imports.send(name).file? }
      validates_attachment_presence name, options
    end

    # Allows you to use interpolations embed to object instance without
    # worrying about file renaming. It rename them for you.
    # Just use it instead of has_attached_file
    # Params:
    # - same as has_attached_file
    #
    # Of course you can use it instead of has_attached_file all the time,
    # because with standard (not interpolated) models - it works same as
    # has_attached_file
    def has_interpolated_attached_file name, options = {}

      # Get old pathes to all files from file and save in instance variable
      before_update do |record|
        @interpolated_names = {} unless @interpolated_names
        @interpolated_names[name] = {} unless @interpolated_names[name]
        old_record = self.class.find(record.id)
        (record.send(name).styles.keys+[:original]).each do |style|
          @interpolated_names[name][style] = old_record.send(name).path(style)
        end
      end

      # If validation has been passed - move files to a new location
      after_update do |record|
        (record.send(name).styles.keys+[:original]).each do |style|
          orig_path = @interpolated_names[name][style]
          dest_path = record.send(name).path(style)
          if orig_path && dest_path && File.exist?(orig_path) && orig_path != dest_path
            FileUtils.move(orig_path, dest_path)
          end
        end
      end

      # If renaming (or other callbacks) went wrong - restore old names to files
      after_rollback do |record|
        return unless @interpolated_names
        (record.send(name).styles.keys+[:original]).each do |style|
          dest_path = @interpolated_names[name][style]
          orig_path = record.send(name).path(style)
          if orig_path && dest_path && File.exist?(orig_path) && orig_path != dest_path
            FileUtils.move(orig_path, dest_path)
          end
        end
      end

      has_attached_file name, options
    end

  end
end