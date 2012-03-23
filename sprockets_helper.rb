require 'sprockets'
require 'coffee_script'
require 'sass'

module SprocketsHelper
  def self.environment
    environment = Sprockets::Environment.new(File.dirname(__FILE__))

    css_dir = ["app/stylesheets"]
    css_dir.each do |path|
      environment.append_path path
    end

    js_dir  = ["app/javascripts"]
    js_dir.each do |path|
      environment.append_path path
    end

    images_dir  = ["app/images"]
    images_dir.each do |path|
      environment.append_path path
    end

    environment
  end
end