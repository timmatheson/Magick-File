# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{Magickfile}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tim Matheson"]
  s.date = %q{2009-10-05}
  s.description = %q{Extends the ruby file class with methods to determine dimensions and methods for rotating an image ect.}
  s.email = %q{me@timmatheson.com}
  s.extra_rdoc_files = ["lib/magickfile.rb", "README.rdoc"]
  s.files = ["init.rb", "lib/magickfile.rb", "Rakefile", "README.rdoc", "Manifest", "Magickfile.gemspec"]
  s.homepage = %q{http://www.timmatheson.com}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Magickfile", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{magickfile}
  s.rubygems_version = %q{1.3.4}
  s.summary = %q{Extends the ruby file class with methods to determine dimensions and methods for rotating an image ect.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
