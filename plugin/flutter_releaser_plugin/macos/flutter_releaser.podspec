#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_releaser_plugin.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_releaser_plugin'
  s.version          = '0.0.2'
  s.summary          = 'A comprehensive desktop application updater and release tool that simplifies packaging, releasing, and updating Flutter desktop applications across Windows, Linux, and macOS platforms.'
  s.description      = <<-DESC
A comprehensive desktop application updater and release tool that simplifies packaging, releasing, and updating Flutter desktop applications across Windows, Linux, and macOS platforms.
                       DESC
  s.homepage         = 'https://infumia.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Infumia' => 'email@example.com' }

  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'

  # If your plugin requires a privacy manifest, for example if it collects user
  # data, update the PrivacyInfo.xcprivacy file to describe your plugin's
  # privacy impact, and then uncomment this line. For more information,
  # see https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
  # s.resource_bundles = {'flutter_releaser_privacy' => ['Resources/PrivacyInfo.xcprivacy']}

  s.dependency 'FlutterMacOS'

  s.platform = :osx, '10.11'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
end
