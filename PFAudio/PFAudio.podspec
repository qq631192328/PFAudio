
Pod::Spec.new do |s|

  s.name         = "PFAudio"
  s.version      = "1.0.5"
  s.summary      = "PFAudio."

  s.description  = "PFAudio 1.0.5"

  s.homepage     = "https://github.com/qq631192328/PFAudio"

  #s.license      = "MIT"
  s.license       = { :type => 'MIT', :file => 'LICENSE' }

  s.author             = { "hongpeifeng" => "hongpeifeng@163.com" }

  s.ios.deployment_target = '8.0'

  s.source       = { :git => "https://github.com/qq631192328/PFAudio.git", :tag => "#{s.version}" }

  s.source_files  =  "PFAudio/PFAudio/PFAudio/**/**/*"
  
  s.swift_version = "4.0"

  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"

  s.frameworks  = "UIKit", "Foundation"


end
