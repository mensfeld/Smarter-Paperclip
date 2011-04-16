# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{smarter_paperclip}
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Maciej Mensfeld"]
  s.date = %q{2011-04-17}
  s.description = %q{Collection of Paperclip extensions}
  s.email = %q{maciej@mensfeld.pl}
  s.extra_rdoc_files = ["CHANGELOG.rdoc", "README.md", "lib/smarter_paperclip.rb"]
  s.files = ["CHANGELOG.rdoc", "Gemfile", "MIT-LICENSE", "Manifest", "README.md", "Rakefile", "init.rb", "lib/smarter_paperclip.rb", "smarter_paperclip.gemspec"]
  s.homepage = %q{https://github.com/mensfeld/Smarter-Paperclip}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Smarter_paperclip", "--main", "README.md"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{smarter_paperclip}
  s.rubygems_version = %q{1.5.2}
  s.summary = %q{Collection of Paperclip extensions}

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
