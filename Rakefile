# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'AuthExample'
  app.identifier = 'com.example.authexample'
  app.device_family = :iphone
  app.interface_orientations = [:portrait]

  app.pods do
    pod 'SVProgressHUD'
  end
end
