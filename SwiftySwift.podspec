Pod::Spec.new do |s|
  s.name         = "SwiftySwift"
  s.version      = "4.0.0"
  s.summary      = "SwiftySwift is a collection of useful extensions for Swift types and Cocoa objects."
  s.homepage     = "https://github.com/RubenKid/SwiftySwift"
  s.license      = { :type => 'MIT' }
  s.authors      = { "Agustin de Cabrera" => "agustindc@gmail.com" }
  s.source       = { :git => "https://github.com/RubenKid/SwiftySwift.git", :tag => s.version.to_s }
  s.requires_arc = true
  s.platform     = :ios, '8.0'
  s.ios.deployment_target 	= "8.0"

  s.pod_target_xcconfig = { 
    'SWIFT_VERSION' => '5.0',
    'SWIFT_SWIFT3_OBJC_INFERENCE' => 'Off',
  }

  s.subspec 'Core' do |sub|
    sub.source_files = 'SwiftyCore/*.swift'
  end

  s.subspec 'Cocoa' do |sub|
    sub.source_files = 'SwiftyCocoa/*.swift'
    sub.dependency 'SwiftySwift/Core'
  end

  s.subspec 'Geometry' do |sub|
    sub.source_files = 'SwiftyGeometry/*.swift'
    sub.dependency 'SwiftySwift/Core'
  end

  s.subspec 'UIKit' do |sub|
    sub.source_files = 'SwiftyUIKit/*.swift'
    sub.dependency 'SwiftySwift/Cocoa'
  end

  s.subspec 'MultiRange' do |sub|
    sub.source_files = 'MultiRange/*.swift'
  end
end
