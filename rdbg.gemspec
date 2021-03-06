
Gem::Specification.new do |spec|
  spec.name          = "rdbg"
  spec.version       = "0.1.0"
  spec.authors       = ["Koichi Sasada"]
  spec.email         = ["ko1@atdot.net"]

  spec.summary       = %q{namespace for debug.gem (rdbg command)}
  spec.description   = %q{This gem is only for namespace to install debug.gem (rdbg command)}
  spec.homepage      = "https://github.com/ko1/rdbg"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.add_runtime_dependency 'debug', '>= 1.2.2'
end

