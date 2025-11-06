#
#  Be sure to run `pod spec lint Win2GainMyGP.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name                  = 'Win2GainMyGP'
  s.version               = '1.0.1' # bump
  s.summary               = 'Sample Spec'
  s.homepage              = 'https://github.com/shadhin-music/Win2GainMyGP'

  s.author                = { 'Md Abir Hossain' => 'mdabirhossain.dev@gmail.com' }
  s.license               = { :type => 'MIT', :text => 'MIT License. Copyright (c) 2025 Md Abir Hossain. Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to do so, subject to the following conditions: THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.' }

  s.ios.deployment_target = '13.0'
  s.swift_versions        = ['5.9']  # array is safer than s.swift_version

  s.source = { :git => 'https://github.com/shadhin-music/Win2GainMyGP.git', :tag => s.version.to_s }

  s.vendored_frameworks   = 'Framework/Win2GainMyGP.xcframework'
  s.requires_arc          = true

  # Remove this unless you KNOW the binary is static:
  # s.static_framework = true
end
