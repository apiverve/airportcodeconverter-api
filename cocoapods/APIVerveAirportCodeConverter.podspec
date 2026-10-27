Pod::Spec.new do |s|
  s.name             = 'APIVerveAirportCodeConverter'
  s.version          = '1.2.3'
  s.summary          = 'Airport Code Converter is an IATA code API that converts between 3-letter IATA and 4-letter ICAO airport codes.'
  s.description      = <<-'DESC'
Airport Code Converter is an IATA code API that converts between 3-letter IATA and 4-letter ICAO airport codes. Submit either identifier to receive the matching code, official airport name, city, state, and country code.

This iOS/macOS SDK provides a convenient way to access the Airport Code Converter from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/airportcodeconverter?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/airportcodeconverter-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveAirportCodeConverter/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
