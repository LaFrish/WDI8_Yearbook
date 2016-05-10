# -*- encoding: utf-8 -*-
# stub: pristine 0.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "pristine"
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Carla Souza"]
  s.date = "2016-04-19"
  s.description = "Watches if any file managed by Puppet was modified."
  s.email = ["contact@carlasouza.com"]
  s.executables = ["pristine"]
  s.files = ["bin/pristine"]
  s.homepage = "https://github.com/carlasouza/pristine"
  s.licenses = ["GPL-3.0"]
  s.rubygems_version = "2.4.5.1"
  s.summary = "Pristine configuration files."

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rb-inotify>, ["~> 0.9.7"])
    else
      s.add_dependency(%q<rb-inotify>, ["~> 0.9.7"])
    end
  else
    s.add_dependency(%q<rb-inotify>, ["~> 0.9.7"])
  end
end
