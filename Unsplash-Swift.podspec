Pod::Spec.new do |s|
  s.name             = "Unsplash-Swift"
  s.version          = "0.2.0"
  s.summary          = "Unsplash API"

  s.description      = "Unsplash API Kit"
  s.homepage         = "https://github.com/muukii/Unsplash-Swift"
  s.license          = 'MIT'
  s.author           = { "muukii" => "m@muukii.me" }
  s.source           = { :git => "https://github.com/muukii/Unsplash-Swift.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Unsplash-Swift/*.swift'
  s.dependency 'RESTRequest', '~> 0.4.0'
end
