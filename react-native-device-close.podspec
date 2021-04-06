require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-device-close"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]
  s.license      = "MIT"
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/PhysicsAreBad/react-native-device-close.git", :tag => "main" }
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency "React"

end

  