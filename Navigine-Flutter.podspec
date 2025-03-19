Pod::Spec.new do |spec|
  spec.name                 = 'Navigine-Flutter'
  spec.version              = '2.18'
  spec.license              = { :type => 'Custom', :text => 'Navigine Licence'}
  spec.summary              = "iOS SDK for performing indoor navigation"
  spec.platform             = :ios, "12.0"
  spec.frameworks           = ["CoreFoundation", "CoreGraphics", "CoreLocation", "CoreText", "CoreBluetooth", "GLKit", "SystemConfiguration", "OpenGLES", "QuartzCore", "UIKit", "Metal"]
  spec.libraries            = ["c++"]
  spec.homepage             = 'https://github.com/Navigine/Indoor-Navigation-iOS-Mobile-SDK-2.0-Flutter'
  spec.authors              = { 'Pavel Tychinin' => 'p.tychinin@navigine.com' }
  spec.source               = { :git => 'https://github.com/Navigine/Indoor-Navigation-iOS-Mobile-SDK-2.0-Flutter.git', :tag => 'v.2.18' }
  spec.vendored_frameworks  = 'Frameworks/Navigine.xcframework'
  spec.preserve_paths       = 'Frameworks/Navigine.xcframework'
end
