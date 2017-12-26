Pod::Spec.new do |s|
  s.name     = 'LDNetDiagnoService'
  s.version  = '1.2.1'
  s.license  = {:type => 'MIT', :file => 'LICENSE'}
  s.summary  = '利用TCP Connect和traceroute的原理，对指定域名（通常为后台API的提供域名）进行网络诊断，并收集诊断日志。'
  s.homepage = 'https://git.ms.netease.com/commonlibraryios/LDNetDiagnoService_IOS'
  s.authors  = { 'huipang' => 'huipang@corp.netease.com' }
  s.source   = { :git => 'https://github.com/KosyanMedia/LDNetDiagnoService_IOS.git' }

  s.platform = :ios
  s.requires_arc = true
  s.ios.deployment_target = '7.0'
  s.ios.public_header_files = 'LDNetDiagnoService/LDNetConnect.h', 'LDNetDiagnoService/LDNetGetAddress.h', 'LDNetDiagnoService/LDNetTimer.h', 'LDNetDiagnoService/LDNetTraceRoute.h'
  s.ios.source_files = 'LDNetDiagnoService/*.{h,m}'
  s.ios.frameworks = "CoreTelephony", "SystemConfiguration"
  s.ios.library = 'resolv'
end
