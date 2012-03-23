require 'sprockets'
require 'coffee_script'
require 'sass'

module SprocketsHelper
  def self.environment
    environment = Sprockets::Environment.new(File.dirname(__FILE__))
    
    config = YAML.load(open("./config/assets.yml"))
    config["assets_paths"].each do |path|
      environment.append_path path
    end
    environment
  end
end