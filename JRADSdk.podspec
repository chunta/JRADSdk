require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'version.json')))

Pod::Spec.new do |s|
  s.name         = "JRADSdk"
  s.version      = package['version'][1..-1]
  s.summary      = "JRADSdk is the library for Test"
  s.homepage     = "https://www.google.com"
  s.documentation_url = "https://docs.google.com/docs"
  s.license    = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Test" => "rex.chen@appier.com" }
  s.platform     = :ios, '9.0'
  s.source       = { :git => "https://github.com/chunta/JRADSdk.git", :tag => package['version']}
  s.ios.vendored_frameworks = 'JRADSdk.xcframework'
  s.frameworks = 'AdSupport', 'CoreTelephony', 'SystemConfiguration', 'CoreLocation', 'ImageIO', 'MobileCoreServices'
  s.requires_arc = true
end
