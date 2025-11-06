Pod::Spec.new do |s|
  s.name                  = 'Win2GainMyGP'
  s.version               = '1.0.1'
  s.summary               = 'Win2GainMyGP SDK (binary distribution)'
  s.description           = 'Prebuilt XCFramework for the Win2GainMyGP SDK.'
  s.homepage              = 'https://github.com/shadhin-music/Win2GainMyGP'

  s.license               = { :type => 'MIT', :file => 'LICENSE' }
  s.authors               = { 'Md Abir Hossain' => 'mdabirhossain.dev@gmail.com' }

  s.platforms             = { :ios => '13.0' }
  s.swift_versions        = ['5.9']
  s.module_name           = 'Win2GainMyGP'

  s.source                = { :git => 'https://github.com/shadhin-music/Win2GainMyGP.git',
                              :tag => s.version.to_s }

  # This path must exist at the 1.0.1 tag, relative to the repo root:
  s.vendored_frameworks   = 'Framework/Win2GainMyGP.xcframework'

  s.requires_arc          = true
  # If your XCFramework is STATIC and you want static linkage, uncomment:
  # s.static_framework    = true
end
