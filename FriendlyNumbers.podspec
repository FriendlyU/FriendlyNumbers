Pod::Spec.new do |s|
  s.name             = 'FriendlyNumbers'
  s.version          = '0.1'
  s.summary          = 'Making numbers friendlier.'

  s.description      = <<-DESC
    Converts number like 1000 to 1K and 1500 to 1.5K.
                       DESC

  s.homepage         = 'https://github.com/FriendlyU/FriendlyNumbers'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Henry Saniuk' => 'henry@henrysaniuk.com' }
  s.source           = { :git => 'https://github.com/FriendlyU/FriendlyNumbers.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'Sources/*'
end
