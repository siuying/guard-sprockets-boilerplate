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
    
  watch(%r{^app/coffeescripts/.*\.coffee$})
  watch(%r{^app/(images|javascripts|stylesheets)/.+$})
  watch("config/assets.yml")
end

guard 'jasmine-headless-webkit' do
  watch(%r{^app/javascripts/compiled/(.*)\.js$}) { |m| "spec/compiled/#{m[1]}_spec.js" }
  watch(%r{^app/javascripts/(.*)\.js$}) { |m| "spec/#{m[1]}_spec.js" }

  watch(%r{^spec/javascripts/(.+)(_?[sS]pec)\.js})  { |m| "spec/javascripts/#{m[1]}#{m[2]}.js" }
  watch(%r{^spec/javascripts/compiled/(.+)(_?[sS]pec)\.js})  { |m| "spec/javascripts/compiled/#{m[1]}#{m[2]}.js" }
end
