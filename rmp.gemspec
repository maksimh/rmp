$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rmp/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rmp"
  s.version     = Rmp::VERSION
  s.authors     = ["Maksim H"]
  s.email       = ["maksimh@yahoo.com"]
  s.homepage    = "https://github.com/maksimh/rmp"
  s.summary     = "An engine providing a double-entry bookkeeping functionality for Rails application"
  s.description = "An engine providing a double-entry bookkeeping functionality for Rails application"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.1"

  s.add_development_dependency "sqlite3"
end
