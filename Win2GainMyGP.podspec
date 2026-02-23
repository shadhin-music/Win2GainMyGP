
Pod::Spec.new do |s|
  s.name                  = 'Win2GainMyGP'
  s.version               = '1.1.0'
  s.summary               = 'Sample Spec'
  s.homepage              = 'https://github.com/shadhin-music/Win2GainMyGP'

  s.author                = { 'Md Abir Hossain' => 'mdabirhossain.dev@gmail.com' }
  s.license               = { :type => 'MIT', :file => 'LICENSE' }

  # You can remove s.platform if you want; this is fine:
  s.ios.deployment_target = '13.0'
  s.swift_version         = '5.9'

  # IMPORTANT: include .git
  s.source = { :git => 'https://github.com/shadhin-music/Win2GainMyGP.git', :tag => s.version.to_s }

  # If your xcframework contains Swift, CocoaPods typically works better with:
 
  s.ios.vendored_frameworks = 'Framework/Win2GainMyGP.xcframework'
  s.requires_arc            = true
  s.static_framework = true
end
