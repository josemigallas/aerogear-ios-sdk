Pod::Spec.new do |s|
  s.name         = 'AGSMetrics'
  s.version      = '1.0.0'
  s.summary      = 'AeroGear Services metrics'
  s.description  = 'AeroGear Services metrics'

  s.homepage     = 'http://aerogear.org'
  s.license      = 'Apache License, Version 2.0'
  s.authors      = 'AeroGear'
  s.platform     = :ios, '9.0'
  s.ios.deployment_target = '9.0'
  s.source       = { :git => 'https://github.com/aerogear/aerogear-ios-sdk.git',
                     :tag => s.version}
  s.source_files = '**/*.swift'
  s.frameworks   = 'UIKit', 'Foundation', 'SystemConfiguration'
  ## Default core dependency
  s.dependency 'AGSCore'
  s.requires_arc = true
end
