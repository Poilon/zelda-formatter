# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "zelda-formatter"
  spec.version       = '0.0.1'
  spec.authors       = ["Poilon"]
  spec.email         = ["poilon@gmail.com"]
  spec.summary       = %q{A zelda sound will be played when your specs pass}
  spec.description   = %q{A zelda sound will be played when your specs pass}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = ['lib/zelda_formatter.rb', 'sound/zelda.mp3']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
