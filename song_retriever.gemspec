$:.push File.expand_path("lib", __dir__)
require_relative "lib/song_retriever/version"

Gem::Specification.new do |spec|
  spec.name        = "song_retriever"
  spec.version     = SongRetriever::VERSION
  spec.authors     = ["VetalKamen"]
  spec.email       = ["vitalii_kemeniash@epam.com"]
  spec.homepage    = "https://github.com/VetalKamen/song_retriever"
  spec.summary     = "Summary of SongRetriever."
  spec.description = "Description of SongRetriever."
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", ">= 7.0.3.1"
end
