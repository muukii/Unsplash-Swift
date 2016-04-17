Pod::Spec.new do |s|
  s.name             = "Unsplash-Swift"
  s.version          = "0.5.0"
  s.summary          = "Unsplash API"

  s.description      = "Unsplash API Kit"
  s.homepage         = "https://github.com/muukii/Unsplash-Swift"
  s.license          = 'MIT'
  s.author           = { "muukii" => "m@muukii.me" }
  s.source           = { :git => "https://github.com/muukii/Unsplash-Swift.git", :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'
  s.requires_arc = true

  s.source_files = 'Unsplash-Swift/**/*.swift'
  s.dependency 'RESTRequest', '~> 0.4.0'
end
