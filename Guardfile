require 'rubygems'
require 'bundler/setup'
require './sprockets_helper'

guard 'coffeescript', :output => 'app/javascripts/compiled' do
  watch(%r{^app/coffeescripts/.*\.coffee$})
end

guard 'coffeescript', :output => 'spec/javascripts/compiled' do
  watch(%r{^spec/coffeescripts/.*\.coffee$})
end

guard 'sprockets2', 
  :sprockets => SprocketsHelper.environment, 
  :precompile => [/\w+\.(?!js|css|scss|coffee).+/, /application.(css|js)$/ ],
  :digest => false,
  :gz => false do
  watch(%r{^app/(images|javascripts|stylesheets)/.+$})
  watch("config/assets.yml")
end

guard 'jasmine-headless-webkit' do
  watch(%r{^spec/(.+)_spec\.(js\.coffee|js|coffee)})  { |m| newest_js_file("spec/#{m[1]}_spec.#{m[2]}") }
  watch(%r{^lib/(.+)\.(js\.coffee|js)|coffee})        { |m| newest_js_file("spec/lib/#{m[1]}_spec.#{m[2]}") }
  watch(%r{spec/spec_helper\.(js\.coffee|js|coffee)}) { "spec" }
end
