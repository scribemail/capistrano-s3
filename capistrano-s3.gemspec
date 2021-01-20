# frozen_string_literal: true

$LOAD_PATH.unshift(File.dirname(__FILE__) + "/lib")
require "capistrano/s3/version"

# rubocop:disable Metrics/BlockLength
Gem::Specification.new do |s|
  s.authors = [
    "Jean-Philippe Doyle",
    "Josh Delsman",
    "Aleksandrs Ļedovskis",
    "Douglas Jarquin",
    "Amit Barvaz",
    "Jan Lindblom"
  ]
  s.email = ["jeanphilippe.doyle@hooktstudios.com", "aleksandrs@ledovskis.lv"]
  s.description =
    "Enables static websites deployment to Amazon S3 website buckets using Capistrano."
  s.summary = "Build and deploy a static website to Amazon S3"
  s.homepage = "https://github.com/capistrano-s3/capistrano-s3"
  s.licenses = ["MIT"]
  s.files = `git ls-files`.split($OUTPUT_RECORD_SEPARATOR)
  s.executables = s.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  s.test_files = s.files.grep(%r{^(test|spec|features)/})
  s.name = "capistrano-s3"
  s.require_paths = ["lib"]
  s.version = Capistrano::S3::VERSION
  s.cert_chain = ["certs/j15e.pem"]
  s.signing_key = File.expand_path("~/.ssh/gem-private_key.pem") if $PROGRAM_NAME.end_with?("gem")

  # Min rubies
  s.required_ruby_version = ">= 2.5.0"

  # Gem dependencies
  s.add_runtime_dependency "aws-sdk-s3", "~> 1.87"
  s.add_runtime_dependency "aws-sdk-cloudfront", "~> 1.47"
  s.add_runtime_dependency "nokogiri", "1.11.1"
  s.add_runtime_dependency "capistrano", ">= 2"
  s.add_runtime_dependency "mime-types"
end
# rubocop:enable Metrics/BlockLength
