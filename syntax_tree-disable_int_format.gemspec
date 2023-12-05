# frozen_string_literal: true

require_relative "lib/syntax_tree/disable_int_format/version"

Gem::Specification.new do |spec|
  spec.name = "syntax_tree-disable_int_format"
  spec.version = SyntaxTree::DisableIntFormat::VERSION
  spec.authors = ["Tasuku Kakimoto"]
  spec.email = ["tasuku.dev@gmail.com"]

  spec.summary = "A syntax_tree plugin to disable int formatting."
  spec.homepage = "https://github.com/tasukujp/syntax_tree-disable_int_format"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "syntax_tree", ">= 6.0"

  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
