# -*- encoding: utf-8 -*-
# stub: aws-sdk-rails 1.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "aws-sdk-rails"
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Amazon Web Services"]
  s.date = "2016-02-01"
  s.description = "Provides helpers to integrate the AWS SDK for Ruby with Ruby on Rails."
  s.email = ["alexwood@amazon.com"]
  s.homepage = "http://github.com/awslabs/aws-sdk-rails"
  s.licenses = ["Apache 2.0"]
  s.rubygems_version = "2.4.5.1"
  s.summary = "AWS SDK for Ruby Rails Plugin"

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<aws-sdk-resources>, ["~> 2"])
      s.add_runtime_dependency(%q<railties>, [">= 3"])
    else
      s.add_dependency(%q<aws-sdk-resources>, ["~> 2"])
      s.add_dependency(%q<railties>, [">= 3"])
    end
  else
    s.add_dependency(%q<aws-sdk-resources>, ["~> 2"])
    s.add_dependency(%q<railties>, [">= 3"])
  end
end
