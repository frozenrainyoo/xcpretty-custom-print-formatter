# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "xcpretty-custom-print-formatter"
  spec.version       = "1.0.0"
  spec.authors       = ["frozenrain yoo"]
  spec.email         = ["frozenrain.yoo@gmail.com"]
  spec.description   =
  %q{
  Formatter for xcpretty customized to provide pretty custom output
  }
  spec.summary       = %q{xcpretty custom formatter}
  spec.homepage      = "https://github.com/frozenrainyoo/xcpretty-custom-print-formatter"
  spec.license       = "MIT"
  spec.required_ruby_version = "~> 2.0"
  spec.files         = [
  	"README.md",
  	"LICENSE",
  	"lib/custom_print_formatter.rb",
  	"bin/xcpretty-custom-print-formatter"]
  spec.executables   = ["xcpretty-custom-print-formatter"]
  spec.require_paths = ["lib"]
  spec.add_dependency "xcpretty", "~> 0.2", ">= 0.0.7"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "bacon", "~> 1.2"
end

# bundle init --gemspec=./xcpretty-custom-print-formatter.gemspec