require 'json'
package = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|
  s.name         = 'ReactNativeNavigation'
  s.version      = package['version']
  s.summary      = package['description']

  s.authors      = "Wix.com"
  s.homepage     = package['homepage']
  s.license      = package['license']
  s.platform     = :ios, '9.0'

  s.module_name  = 'ReactNativeNavigation'

  s.source       = { :git => 'https://github.com/anonrig/react-native-navigation.git', :branch => 'master' }
  s.source_files  = 'ios','ios/**/*.{h,m}'

  s.public_header_files = 'ios/**/*.h'

  s.dependency 'React'
  s.frameworks = 'UIKit'
end
