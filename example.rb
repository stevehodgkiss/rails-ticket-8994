require 'bundler/setup'

require 'rails/generators'
require 'rails/generators/rails/app/app_generator'

class DummyGenerator < Thor::Group
  def self.source_root; File.expand_path("../templates", __FILE__); end
  include Thor::Actions
  
  def run_rails_new
    invoke Rails::Generators::AppGenerator, ["dummy"]
  end
end

DummyGenerator.start(["test"])