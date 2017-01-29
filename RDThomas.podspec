Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "RDThomas"
  s.version      = "0.0.3"
  s.summary      = "open sys settings and sub pages"
  s.description  = "open iOS sys settings and sub pages"

  s.homepage     = "https://github.com/RichardLeeH/Thomas"
  s.license      = "MIT"
  s.author             = { "RichardLee" => "305516208@qq.com" }
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/RichardLeeH/Thomas.git", :tag => s.version }

  s.source_files  = "Thomas/**/*.{h,m}"

end
