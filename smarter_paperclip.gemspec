# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "smarter_paperclip"
  s.version = "0.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Maciej Mensfeld"]
  s.date = "2012-12-09"
  s.description = "Papercli with bunch of extensions"
  s.email = "maciej@mensfeld.pl"
  s.extra_rdoc_files = ["CHANGELOG.rdoc", "LICENSE", "README.md", "lib/paperclip.rb", "lib/paperclip/attachment.rb", "lib/paperclip/callback_compatability.rb", "lib/paperclip/command_line.rb", "lib/paperclip/geometry.rb", "lib/paperclip/interpolations.rb", "lib/paperclip/iostream.rb", "lib/paperclip/matchers.rb", "lib/paperclip/matchers/have_attached_file_matcher.rb", "lib/paperclip/matchers/validate_attachment_content_type_matcher.rb", "lib/paperclip/matchers/validate_attachment_presence_matcher.rb", "lib/paperclip/matchers/validate_attachment_size_matcher.rb", "lib/paperclip/processor.rb", "lib/paperclip/railtie.rb", "lib/paperclip/storage.rb", "lib/paperclip/storage/filesystem.rb", "lib/paperclip/storage/s3.rb", "lib/paperclip/style.rb", "lib/paperclip/thumbnail.rb", "lib/paperclip/upfile.rb", "lib/paperclip/version.rb", "lib/smarter_paperclip.rb"]
  s.files = ["CHANGELOG.rdoc", "Gemfile", "LICENSE", "MIT-LICENSE", "Manifest", "README.md", "Rakefile", "init.rb", "lib/paperclip.rb", "lib/paperclip/attachment.rb", "lib/paperclip/callback_compatability.rb", "lib/paperclip/command_line.rb", "lib/paperclip/geometry.rb", "lib/paperclip/interpolations.rb", "lib/paperclip/iostream.rb", "lib/paperclip/matchers.rb", "lib/paperclip/matchers/have_attached_file_matcher.rb", "lib/paperclip/matchers/validate_attachment_content_type_matcher.rb", "lib/paperclip/matchers/validate_attachment_presence_matcher.rb", "lib/paperclip/matchers/validate_attachment_size_matcher.rb", "lib/paperclip/processor.rb", "lib/paperclip/railtie.rb", "lib/paperclip/storage.rb", "lib/paperclip/storage/filesystem.rb", "lib/paperclip/storage/s3.rb", "lib/paperclip/style.rb", "lib/paperclip/thumbnail.rb", "lib/paperclip/upfile.rb", "lib/paperclip/version.rb", "lib/smarter_paperclip.rb", "paperclip.gemspec", "smarter_paperclip.gemspec"]
  s.homepage = "https://github.com/mensfeld/Smarter-Paperclip"
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Smarter_paperclip", "--main", "README.md"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "smarter_paperclip"
  s.rubygems_version = "1.8.10"
  s.summary = "Papercli with bunch of extensions"

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
