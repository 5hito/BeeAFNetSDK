
Pod::Spec.new do |s|

  s.name         = "BeeAFNetSDK"
  s.version      = "0.0.1"
  s.summary      = "AFNetworking 改名封装"

  s.description  = <<-DESC
    0.0.1：简单改名使用，防止跟第三方应用使用af冲突
                   DESC

  s.homepage     = "https://github.com/5hito/BeeAFNetSDK"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = { "5hito" => "beemans@foxmail.com" }
  s.source       = { :git => "https://github.com/5hito/BeeAFNetSDK.git", :tag => s.version.to_s }

#s.source_files  = "Classes", "Classes/**/*.{h,m}"

  s.ios.deployment_target = '8.0'
  s.frameworks = 'MobileCoreServices', 'CoreGraphics', 'Security', 'SystemConfiguration'
  s.requires_arc = true
  s.ios.vendored_framework   = 'lib/BeeAFNetworking.framework'

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  s.xcconfig = {"GCC_PREPROCESSOR_DEFINITIONS"=>"SD_WEBP=1"}

  #依赖源库
  s.dependency 'SDWebImage', '~>3.8'
  s.dependency 'SDWebImage/WebP'

end
