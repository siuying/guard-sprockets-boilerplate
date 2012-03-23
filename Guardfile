require 'rubygems'
require 'bundler/setup'
require './sprockets_helper'

guard 'sprockets2' , :sprockets => SprocketsHelper.environment, :precompile => [/\w+\.(?!js|css|scss|coffee).+/, /application.(css|js)$/ ]  do
  watch(%r{^app/(images|javascripts|stylesheets)/.+$})
end

guard 'rake', :task => 'copy_assets' do
  watch(%r{^public/assets/application-.+$})
end