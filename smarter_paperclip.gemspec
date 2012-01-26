# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{smarter_paperclip}
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Maciej Mensfeld}]
  s.date = %q{2012-01-25}
  s.description = %q{Papercli with bunch of extensions}
  s.email = %q{maciej@mensfeld.pl}
  s.extra_rdoc_files = [%q{CHANGELOG.rdoc}, %q{LICENSE}, %q{README.md}, %q{lib/generators/paperclip/USAGE}, %q{lib/generators/paperclip/paperclip_generator.rb}, %q{lib/generators/paperclip/templates/paperclip_migration.rb.erb}, %q{lib/paperclip.rb}, %q{lib/paperclip/attachment.rb}, %q{lib/paperclip/callback_compatability.rb}, %q{lib/paperclip/command_line.rb}, %q{lib/paperclip/geometry.rb}, %q{lib/paperclip/interpolations.rb}, %q{lib/paperclip/iostream.rb}, %q{lib/paperclip/matchers.rb}, %q{lib/paperclip/matchers/have_attached_file_matcher.rb}, %q{lib/paperclip/matchers/validate_attachment_content_type_matcher.rb}, %q{lib/paperclip/matchers/validate_attachment_presence_matcher.rb}, %q{lib/paperclip/matchers/validate_attachment_size_matcher.rb}, %q{lib/paperclip/processor.rb}, %q{lib/paperclip/railtie.rb}, %q{lib/paperclip/storage.rb}, %q{lib/paperclip/storage/filesystem.rb}, %q{lib/paperclip/storage/s3.rb}, %q{lib/paperclip/style.rb}, %q{lib/paperclip/thumbnail.rb}, %q{lib/paperclip/upfile.rb}, %q{lib/paperclip/version.rb}, %q{lib/smarter_paperclip.rb}, %q{lib/tasks/paperclip.rake}]
  s.files = [%q{CHANGELOG.rdoc}, %q{LICENSE}, %q{MIT-LICENSE}, %q{README.md}, %q{Rakefile}, %q{features/basic.feature}, %q{features/s3.feature}, %q{features/step_definitions/html_steps.rb}, %q{features/step_definitions/rails_steps.rb}, %q{features/step_definitions/s3_steps.rb}, %q{features/step_definitions/web_steps.rb}, %q{features/support/env.rb}, %q{features/support/paths.rb}, %q{features/support/rails.rb}, %q{features/support/s3.rb}, %q{gemfiles/rails2.gemfile}, %q{gemfiles/rails2.gemfile.lock}, %q{gemfiles/rails3.gemfile}, %q{gemfiles/rails3.gemfile.lock}, %q{generators/paperclip/USAGE}, %q{generators/paperclip/paperclip_generator.rb}, %q{generators/paperclip/templates/paperclip_migration.rb.erb}, %q{init.rb}, %q{lib/generators/paperclip/USAGE}, %q{lib/generators/paperclip/paperclip_generator.rb}, %q{lib/generators/paperclip/templates/paperclip_migration.rb.erb}, %q{lib/paperclip.rb}, %q{lib/paperclip/attachment.rb}, %q{lib/paperclip/callback_compatability.rb}, %q{lib/paperclip/command_line.rb}, %q{lib/paperclip/geometry.rb}, %q{lib/paperclip/interpolations.rb}, %q{lib/paperclip/iostream.rb}, %q{lib/paperclip/matchers.rb}, %q{lib/paperclip/matchers/have_attached_file_matcher.rb}, %q{lib/paperclip/matchers/validate_attachment_content_type_matcher.rb}, %q{lib/paperclip/matchers/validate_attachment_presence_matcher.rb}, %q{lib/paperclip/matchers/validate_attachment_size_matcher.rb}, %q{lib/paperclip/processor.rb}, %q{lib/paperclip/railtie.rb}, %q{lib/paperclip/storage.rb}, %q{lib/paperclip/storage/filesystem.rb}, %q{lib/paperclip/storage/s3.rb}, %q{lib/paperclip/style.rb}, %q{lib/paperclip/thumbnail.rb}, %q{lib/paperclip/upfile.rb}, %q{lib/paperclip/version.rb}, %q{lib/smarter_paperclip.rb}, %q{lib/tasks/paperclip.rake}, %q{paperclip.gemspec}, %q{shoulda_macros/paperclip.rb}, %q{smarter_paperclip.gemspec}, %q{test/attachment_test.rb}, %q{test/command_line_test.rb}, %q{test/database.yml}, %q{test/fixtures/12k.png}, %q{test/fixtures/50x50.png}, %q{test/fixtures/5k.png}, %q{test/fixtures/bad.png}, %q{test/fixtures/s3.yml}, %q{test/fixtures/text.txt}, %q{test/fixtures/twopage.pdf}, %q{test/geometry_test.rb}, %q{test/helper.rb}, %q{test/integration_test.rb}, %q{test/interpolations_test.rb}, %q{test/iostream_test.rb}, %q{test/matchers/have_attached_file_matcher_test.rb}, %q{test/matchers/validate_attachment_content_type_matcher_test.rb}, %q{test/matchers/validate_attachment_presence_matcher_test.rb}, %q{test/matchers/validate_attachment_size_matcher_test.rb}, %q{test/paperclip_test.rb}, %q{test/processor_test.rb}, %q{test/storage_test.rb}, %q{test/style_test.rb}, %q{test/thumbnail_test.rb}, %q{test/upfile_test.rb}, %q{Manifest}]
  s.homepage = %q{https://github.com/mensfeld/Smarter-Paperclip}
  s.rdoc_options = [%q{--line-numbers}, %q{--inline-source}, %q{--title}, %q{Smarter_paperclip}, %q{--main}, %q{README.md}]
  s.require_paths = [%q{lib}]
  s.rubyforge_project = %q{smarter_paperclip}
  s.rubygems_version = %q{1.8.5}
  s.summary = %q{Papercli with bunch of extensions}
  s.test_files = [%q{test/command_line_test.rb}, %q{test/paperclip_test.rb}, %q{test/geometry_test.rb}, %q{test/style_test.rb}, %q{test/integration_test.rb}, %q{test/interpolations_test.rb}, %q{test/processor_test.rb}, %q{test/matchers/validate_attachment_size_matcher_test.rb}, %q{test/matchers/have_attached_file_matcher_test.rb}, %q{test/matchers/validate_attachment_content_type_matcher_test.rb}, %q{test/matchers/validate_attachment_presence_matcher_test.rb}, %q{test/iostream_test.rb}, %q{test/storage_test.rb}, %q{test/upfile_test.rb}, %q{test/thumbnail_test.rb}, %q{test/attachment_test.rb}]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 2.0.0"])
      s.add_development_dependency(%q<paperclip>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 2.0.0"])
      s.add_dependency(%q<paperclip>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 2.0.0"])
    s.add_dependency(%q<paperclip>, [">= 0"])
  end
end
