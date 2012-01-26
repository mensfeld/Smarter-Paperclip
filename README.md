# Smarter Paperclip

Paperclip with some additional cool stuff. This Paperclip version uses old Paperclip but it is tweaked up to work with Rails 3.2.

Collection of Paperclip extensions:

- `validates_attachment_minimum_resolution`
- `validates_attachment_if_included`
- `has_interpolated_attached_file`

Works with Ruby 1.8.7, 1.8.7 EE, 1.9.2, 1.9.3
Works with Rails3

## Install

    gem install smarter_paperclip

and in your Gemfile:
    
    gem 'smarter_paperclip'

## Usage

`validates_attachment_minimum_resolution` - Picture minimal resolution validation. Parameters:

- width - minimal picture width
- height - minimal picture height
- message - error message - can be a Proc
- other params - std like for other validations (like if, unless, etc)


`validates_attachment_if_included` - It force attachment validation only if attachment (file) was send. If file was not send - it will not validate it (will pass without errors)

`has_interpolated_attached_file` - Allows you to use interpolations embed to object instance without worrying about file renaming. It rename them for you. Just use it instead of has_attached_file. Parameters same as with has_attached_file.

Of course you can use it instead of has_attached_file all the time, because with standard (not interpolated) models - it works same as has_attached_file.

## Example

Interpolation

	Paperclip.interpolates :instance_name do |attachment, style|
  		attachment.instance.name.to_url
	end

Model

	class Biography < ActiveRecord::Base
		has_interpolated_attached_file :photo,
		  :url => "/images/models/biographies/:id/:instance_name_:style.:extension"
		              
		validates_attachment_if_included :photo,

		validates_attachment_minimum_resolution :photo, :width => 500, :height => 500
	end

## Note on Patches/Pull Requests
 
* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a future version unintentionally.
* Commit, do not mess with Rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

## Copyright

Copyright (c) 2011 Maciej Mensfeld. See LICENSE for details.
