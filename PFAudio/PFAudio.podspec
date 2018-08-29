
Pod::Spec.new do |s|

  s.name         = "PFAudio"
  s.version      = "1.0.2"
  s.summary      = "PFAudio."

  s.description  = "PFAudio 1.0.2"

  s.homepage     = "https://github.com/qq631192328/PFAudio"

  #s.license      = "MIT (example)"
  s.license       = { :type => 'MIT', :file => 'LICENSE' }

  s.author             = { "hongpeifeng" => "hongpeifeng@163.com" }

  s.ios.deployment_target = '8.0'

  s.source       = { :git => "https://github.com/qq631192328/PFAudio", :tag => "#{s.version}" }

  s.source_files  = "Classes", "PFAudio/PFAudio/*"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"



end
