# -*- encoding: utf-8 -*-
VERSION = "1.1"

Gem::Specification.new do |spec|
  spec.name          = "motion-env-vars"
  spec.version       = VERSION
  spec.authors       = ["Watson"]
  spec.email         = ["watson1978@gmail.com"]
  spec.description   = %q{Set ENV_VARS hash which is available in RubyMotion app}
  spec.summary       = %q{Set ENV_VARS hash which is available in RubyMotion app}
  spec.homepage      = ""
  spec.license       = ""

  files = []
  files << 'README.md'
  files.concat(Dir.glob('lib/**/*.rb'))
  spec.files         = files
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "plist"
  spec.add_development_dependency "rake"
end
