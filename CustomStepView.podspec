Pod::Spec.new do |s|
  s.name             = 'CustomStepView'
  s.version          = '0.1.0'
  s.summary          = 'CustomStepsView'
 
  s.description      = 'Custom Step View for general purposes'
 
  s.homepage         = 'https://github.com/wailynn-wlz/CustomStepsView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Wai Lynn Zaw' => 'wailynnzaw@owaytrip.com' }
  s.source           = { :git => 'https://github.com/wailynn-wlz/CustomStepsView.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '10.0'
  s.source_files = 'CustomStepView/*.swift'
 
end
