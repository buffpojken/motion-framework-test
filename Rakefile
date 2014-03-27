# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/osx'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'VideoTestVLC'

  app.embedded_frameworks << 'VLCKit.framework'
#  app.vendor_project("VLCKit.framework", :static, :products => ["VLCKit"], :headers_dir => "Headers")
end
