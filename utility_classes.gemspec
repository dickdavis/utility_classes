require_relative 'lib/utility_classes/version'

Gem::Specification.new do |spec|
  spec.name        = 'utility_classes'
  spec.version     = UtilityClasses::VERSION
  spec.authors     = ['Dick Davis']
  spec.email       = ['dick@hey.com']
  spec.homepage    = 'https://github.com/d3d1rty/utility_classes'
  spec.summary     = 'Rails gem that facilitates the use of utility CSS frameworks.'
  spec.description = 'Rails gem that facilitates the use of utility CSS frameworks.'
  spec.license     = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/d3d1rty/utility_classes'
  spec.metadata['changelog_uri'] = 'https://github.com/d3d1rty/utility_classes'

  spec.files = Dir['{app,config,db,lib}/**/*', 'LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'rails', '>= 6'
end
