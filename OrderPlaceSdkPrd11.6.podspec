
Pod::Spec.new do |s|

s.name = "OrderPlaceSdkPrd11.6"
s.version = "0.4.2"
s.summary = "Order Place Sdk swift5 Prd with Xcode11.6"

s.description = <<-DESC
a pod that easily implements the order.place function
DESC

s.homepage = "https://github.com/AigensTechnology/OrderPlaceSdkPrd11.6"
s.license = { :type => 'MIT', :file => 'LICENSE' }
s.author = { "风筝" => "13286953452@126.com" }

s.source = { :git => "https://github.com/AigensTechnology/OrderPlaceSdkPrd11.6.git", :tag => "#{s.version}" }

s.ios.deployment_target = "9.0"
s.swift_version = '5.0'
s.static_framework = true

s.frameworks = 'AVFoundation', 'WebKit', 'UIKit', 'Foundation', 'PassKit', 'AddressBook'

s.default_subspec = 'Core'

s.subspec "Core" do |core|
core.ios.vendored_frameworks = 'Classess/frameworks/orderPlaceSDK/OrderPlaceSDK.framework'
end

s.subspec "Alipay" do |ali|
ali.resources = ['Classess/Assets/AlipaySDK.bundle']
ali.ios.vendored_frameworks = 'Classess/frameworks/orderPlaceAlipaySDK/AlipaySDK.framework', 'Classess/frameworks/orderPlaceAlipaySDK/OrderPlaceAlipaySDK.framework'
ali.frameworks = 'SystemConfiguration', 'CoreTelephony', 'QuartzCore', 'CoreText', 'CoreGraphics', 'CFNetwork', 'CoreMotion'
ali.libraries = 'z', 'c++'
ali.dependency 'OrderPlaceSdkPrd11.6/Core'
end

s.subspec "Wechat" do |wechat|
wechat.ios.vendored_frameworks = 'Classess/frameworks/orderPlaceWechatPaySDK/OrderPlaceWechatPaySDK.framework'
wechat.ios.vendored_library = 'Classess/frameworks/orderPlaceWechatPaySDK/libWeChatSDK.a'
wechat.frameworks = 'SystemConfiguration', 'Security', 'CoreTelephony', 'CFNetwork'
wechat.libraries = 'z', 'c++', 'sqlite3.0'
wechat.dependency 'OrderPlaceSdkPrd11.6/Core'
wechat.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-all_load' }
end


end
