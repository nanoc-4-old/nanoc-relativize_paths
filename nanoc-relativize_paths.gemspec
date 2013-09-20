# encoding: utf-8

$LOAD_PATH.unshift(File.expand_path('../lib/', __FILE__))
require 'nanoc/relativize_paths/version'

Gem::Specification.new do |s|
  s.name        = 'nanoc-relativize_paths'
  s.version     = Nanoc::RelativizePaths::VERSION
  s.homepage    = 'http://nanoc.ws/'
  s.summary     = 'Support for relativizing paths in nanoc'
  s.description = 'Provides a :relativize_paths filter for nanoc'

  s.author  = 'Denis Defreyne'
  s.email   = 'denis.defreyne@stoneship.org'
  s.license = 'MIT'

  s.required_ruby_version = '>= 1.9.3'

  s.files              = Dir['[A-Z]*'] +
                         Dir['{lib,test}/**/*'] +
                         [ 'nanoc-relativize_paths.gemspec' ]
  s.require_paths      = [ 'lib' ]

  s.rdoc_options     = [ '--main', 'README.md' ]
  s.extra_rdoc_files = [ 'LICENSE', 'README.md', 'NEWS.md' ]

  s.add_runtime_dependency('nanoc-core')
  s.add_runtime_dependency('nanoc-linking')
  s.add_runtime_dependency('nokogiri')
  s.add_development_dependency('bundler')
end
