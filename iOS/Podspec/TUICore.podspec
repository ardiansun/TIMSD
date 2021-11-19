Pod::Spec.new do |spec|
  spec.name         = 'TUICore'
  spec.version      = '5.8.1668'
  spec.platform     = :ios 
  spec.ios.deployment_target = '9.0'
  spec.license      = { :type => 'Proprietary',
      :text => <<-LICENSE
        copyright 2017 tencent Ltd. All rights reserved.
        LICENSE
       }
  spec.homepage     = 'https://cloud.tencent.com/document/product/269/3794'
  spec.documentation_url = 'https://cloud.tencent.com/document/product/269/9147'
  spec.authors      = 'tencent video cloud'
  spec.summary      = 'TUICore'
  spec.xcconfig     = { 'VALID_ARCHS' => 'armv7 arm64 x86_64', }

  spec.dependency 'TXIMSDK_Plus_iOS','5.8.1668'
  spec.dependency 'ReactiveObjC'
  spec.dependency 'SDWebImage'
  
  spec.requires_arc = true

  spec.source = { :http => 'https://sdk-im-1252463788.cos.ap-hongkong.myqcloud.com/download/tuikit/5.8.1668/ios/TUICore.zip'}
  spec.source_files = '**/TUICore/*.{h,m,mm,c}'
  spec.resource = [
      '**/TUICore/Resources/*.bundle'
  ]

  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end

# pod trunk push TUICore.podspec --use-libraries --allow-warnings
