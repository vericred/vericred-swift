Pod::Spec.new do |s|
  s.name = 'vericred_client'
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.version = '0.0.1'
  s.source = 'https://github.com/vericred/vericred-swift'
  s.authors = 'Vericred Inc.'
  s.license = 'MIT'
  s.homepage = 'https://github.com/vericred/vericred-swift'
  s.summary = 'Autogenerated Swift client for the Vericred API'
  s.source_files = 'vericred_client/Classes/Swaggers/**/*.swift'
  s.dependency 'Alamofire', '~> 3.1.4'
end