#
#  Be sure to run `pod spec lint Win2GainMyGP.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name                  = 'Win2GainMyGP'
  s.version               = '1.0.0'
  s.summary               = 'Sample Spec'
  s.homepage              = 'https://github.com/shadhin-music/Win2GainMyGP'

  s.author                = { 'Md Abir Hossain' => 'mdabirhossain.dev@gmail.com' }
  s.license               = { :type => 'MIT', :file => 'LICENSE' }

  # You can remove s.platform if you want; this is fine:
  s.ios.deployment_target = '13.0'
  s.swift_version         = '5.0'

  # IMPORTANT: include .git
  s.source = { :git => 'https://github.com/shadhin-music/Win2GainMyGP.git', :tag => s.version.to_s }

  # If your xcframework contains Swift, CocoaPods typically works better with:
 
  s.ios.vendored_frameworks = 'Framework/Win_gpSDK_iOS.xcframework'
  s.requires_arc            = true
  s.static_framework = true
end



