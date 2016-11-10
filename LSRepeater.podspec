#
#  Be sure to run `pod spec lint LSRepeater.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


  s.name         = "LSRepeater"
  s.version      = "0.0.12"
  s.summary      = "Executes a block of code repeatedly"

  s.description  = <<-DESC
                   Replaces NSTimer in swift, I wasnt happy with having to
				 	subclass NSObject when I wanted to use NSTimers
                   DESC

  s.homepage     = "http://www.LondonSwift.com"
 
  s.license      = "GNU"
 
  s.author             = "Daren David Taylor"
 
  s.platform     = :ios
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/LondonSwift/LSRepeater.git", :tag => "0.0.12" }
  s.source_files  = "Classes", "*/*.{swift}"
  s.exclude_files = "Classes/Exclude"
  # s.public_header_files = "Classes/**/*.h"
end
