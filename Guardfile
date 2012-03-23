require 'rubygems'
require 'bundler/setup'
require './sprockets_helper'

guard 'sprockets2' , :sprockets => SprocketsHelper.environment, :precompile => [/\w+\.(?!js|css|scss|coffee).+/, /application.(css|js)$/ ]  do
  watch(%r{^app/(images|javascripts|stylesheets)/.+$})
end

guard 'rake', :task => 'copy_assets' do
  watch(%r{^public/assets/application-.+$})
end

guard 'jasmine-headless-webkit' do
  watch(%r{^spec/(.+)_spec\.(js\.coffee|js|coffee)})  { |m| newest_js_file("spec/#{m[1]}_spec.#{m[2]}") }
  watch(%r{^lib/(.+)\.(js\.coffee|js)|coffee})        { |m| newest_js_file("spec/lib/#{m[1]}_spec.#{m[2]}") }
  watch(%r{spec/spec_helper\.(js\.coffee|js|coffee)}) { "spec" }
end