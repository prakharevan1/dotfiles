# -*- encoding: utf-8 -*-
# stub: neovim 0.10.0 ruby lib

Gem::Specification.new do |s|
  s.name = "neovim".freeze
  s.version = "0.10.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Alex Genco".freeze]
  s.bindir = "exe".freeze
  s.date = "2024-06-10"
  s.email = ["alexgenco@gmail.com".freeze]
  s.executables = ["neovim-ruby-host".freeze]
  s.files = ["exe/neovim-ruby-host".freeze]
  s.homepage = "https://github.com/neovim/neovim-ruby".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2.0".freeze)
  s.rubygems_version = "3.3.7".freeze
  s.summary = "A Ruby client for Neovim".freeze

  s.installed_by_version = "3.5.22".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<msgpack>.freeze, ["~> 1.1".freeze])
  s.add_runtime_dependency(%q<multi_json>.freeze, ["~> 1.0".freeze])
  s.add_development_dependency(%q<bundler>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<pry>.freeze, ["~> 0.14".freeze])
  s.add_development_dependency(%q<pry-byebug>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rspec>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<vim-flavor>.freeze, [">= 0".freeze])
end
