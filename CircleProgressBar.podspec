Pod::Spec.new do |s|
  s.name         = "CircleProgressBar"
  s.version      = "0.1"
  s.summary      = "a circle progress bar control written in swift for ios development"

  s.description  = <<-DESC
                     a circle progress bar control written in swift for ios development 
                     written by zoe.liu
                   DESC

  s.homepage     = "https://github.com/xdongliu123/SwiftCircleProgressBar"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "xdongliu123" => "xdongliu123@163.com" }
  # Or just: s.author    = "xdongliu123"
  # s.authors            = { "xdongliu123" => "email@address.com" }
  # s.social_media_url   = "http://twitter.com/xdongliu123"
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/xdongliu123/SwiftCircleProgressBar.git", :tag => s.version.to_s }
  s.source_files  = "SwiftCircleProgressBarDemo⁩/CircleProgressBar/*"
end
