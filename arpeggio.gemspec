require_relative 'lib/arpeggio/version'

Gem::Specification.new do |spec|
  spec.name          = "arpeggio"
  spec.version       = Arpeggio::VERSION
  spec.executables   = 'arpeggio'
  spec.authors       = ["William Barela"]
  spec.email         = ["william.barela.dev@gmail.com"]

  spec.summary       = %q{Arpeggio is a gem to help you learn intervals and arpeggios in the CLI!}
  spec.description   = %q{Arpeggio lets you view the notes and intervals of a given scale and mode in the CLI}
  spec.homepage      = "https://github.com/WilliamBarela/arpeggio"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/WilliamBarela/arpeggio"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
