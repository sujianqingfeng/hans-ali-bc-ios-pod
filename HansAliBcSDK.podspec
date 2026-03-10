Pod::Spec.new do |s|
  s.name         = 'HansAliBcSDK'
  s.version      = '0.1.1'
  s.summary      = 'Vendored iOS frameworks for hans-ali-bc (uni-app x).'
  s.description  = <<-DESC
This pod contains vendored .framework binaries required by the hans-ali-bc uni-app x UTS plugin.

It is intended to reduce HBuilderX cloud packaging upload size by fetching iOS SDK binaries via
CocoaPods instead of bundling them inside uni_modules.
  DESC

  s.homepage     = 'https://github.com/sujianqingfeng/hans-ali-bc-ios-pod'
  s.license      = { :type => 'Proprietary', :text => 'See the upstream SDK license terms.' }
  s.author       = 'sujianqingfeng'

  s.platform     = :ios, '12.0'
  s.source       = { :git => 'https://github.com/sujianqingfeng/hans-ali-bc-ios-pod.git', :tag => s.version.to_s }

  s.vendored_frameworks = 'Frameworks/*.framework'

  # Match the uni-app x plugin's previous pod dependencies.
  s.dependency 'Masonry', '1.1.0'
  s.dependency 'FMDB', '2.7.12'
  s.dependency 'Reachability', '3.7.6'
  s.dependency 'SocketRocket', '0.7.1'

  # Used by HansAliBcIOSSupport.swift for zip handling.
  s.dependency 'SSZipArchive'

  # Keep explicit for consumers outside of uni-app x too.
  s.frameworks = [
    'AVFoundation',
    'JavaScriptCore',
    'WebKit',
    'CFNetwork',
    'CoreLocation',
    'CoreMotion',
    'CoreTelephony',
    'Photos',
    'QuartzCore',
    'Security',
    'SystemConfiguration'
  ]
  s.libraries = ['c++', 'resolv', 'z', 'sqlite3']
end
