$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rmp/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rmp"
  s.version     = Rmp::VERSION
  s.authors     = ["Maksim H"]
  s.email       = ["maksimh@yahoo.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Rmp."
  s.description = "TODO: Description of Rmp."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.1"

  s.add_development_dependency "sqlite3"
end
