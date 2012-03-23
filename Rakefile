require 'rubygems'
require 'bundler/setup'
require 'fileutils'

def assets_files
  Dir["public/assets/application-*"].select{|f| f =~ /(js|css)$/}
end

def clean_name(original)
  matches = original.match(/(.+)-.+\.(css|js)/)
  "#{matches[1]}.#{matches[2]}"
end

task :copy_assets do
  assets_files.each do |filename|
    clean_filename = clean_name(filename)
    FileUtils.cp filename, clean_filename
  end
end

