
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "solabee_plants/version"

Gem::Specification.new do |spec|
  spec.name          = "solabee_plants"
  spec.version       = SolabeePlants::VERSION
  spec.authors       = ["'Ariel Ibarra'"]
  spec.email         = ["'arielibarra39@gmail.com'"]

  spec.summary       = %q{an interface for collecting plant data from solabee flowers website}
  spec.description   = %q{The user will be able to interface with the website to obtain a variety of plants that are available for adoption. Each plant, once chosen, will display the genus, price, and short description of the plant number they have chosen}
  spec.homepage      = "http://spechomepage.com"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "http://mygemserver.com"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "http://spechomepage.com"
    spec.metadata["changelog_uri"] = "http://spechomepage.com"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"
end