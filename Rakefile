# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'bundler'
require 'sugarcube-568'
Bundler.require


require './app_properties'
props = AppProperties.new


Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = props.name
  app.deployment_target = props.deployment_target
  app.identifier = props.identifier

  app.version = props.version
  app.short_version = props.version #required to be incremented for AppStore (http://iconoclastlabs.com/cms/blog/posts/updating-a-rubymotion-app-store-submission)
  app.device_family = props.devices
  #app.icons = props.icons
  app.provisioning_profile = props.provisioning
  app.codesign_certificate = props.distribution_certificate
  #app.codesign_certificate = props.developer_certificate

  #include styles
  app.files += Dir.glob(File.join(app.project_dir, 'lib/**/*.rb'))
  app.frameworks += props.frameworks
  app.prerendered_icon = props.prerendered_icon
end