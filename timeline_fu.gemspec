# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "timeline_fu/version"

Gem::Specification.new do |s|
  s.name = "timeline_fu"
  s.version = TimelineFu::VERSION
  s.authors = ["James Golick", "Mathieu Martin", "Francois Beausoleil"]
  s.email = "james@giraffesoft.ca"
  s.homepage = "https://github.com/jamesgolick/timeline_fu"
  s.summary = "Easily build timelines, much like GitHub's news feed"
  s.description = "Easily build timelines, much like GitHub's news feed"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.has_rdoc = true
  s.extra_rdoc_files = ["README.rdoc"]
  s.rdoc_options = ["--charset=UTF-8"]

  s.add_runtime_dependency "activerecord"

  s.add_development_dependency "appraisal"
  s.add_development_dependency "logger"
  s.add_development_dependency "mocha"
  s.add_development_dependency "sqlite3"
end
