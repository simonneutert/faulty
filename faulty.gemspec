# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'faulty/version'

Gem::Specification.new do |spec|
  spec.name = 'faulty'
  spec.version = Faulty.version
  spec.authors = ['Justin Howard']
  spec.email = ['jmhoward0@gmail.com']

  spec.summary = ''
  spec.homepage = 'https://github.com/ParentSquare/faulty'

  spec.files = `git ls-files -z`
    .split("\x0")
    .reject { |f| f.match(%r{^spec/}) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.3'

  spec.add_runtime_dependency 'concurrent-ruby', '~> 1.0'

  spec.add_development_dependency 'activesupport', '>= 4.2'
  spec.add_development_dependency 'bundler', '>= 1.17', '< 3'
  spec.add_development_dependency 'byebug', '~> 11.0'
  spec.add_development_dependency 'irb', '~> 1.0'
  spec.add_development_dependency 'redcarpet', '~> 3.5'
  spec.add_development_dependency 'rspec', '~> 3.8'
  spec.add_development_dependency 'rspec_junit_formatter', '~> 0.4'
  # 0.81 is the last rubocop version with Ruby 2.3 support
  spec.add_development_dependency 'rubocop', '0.81.0'
  spec.add_development_dependency 'rubocop-rspec', '1.41.0'
  spec.add_development_dependency 'simplecov', '~> 0.18'
  spec.add_development_dependency 'timecop', '>= 0.9'
  spec.add_development_dependency 'yard', '~> 0.9.25'
end
