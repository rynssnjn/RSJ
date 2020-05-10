
Pod::Spec.new do |spec|

# ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

s.name         = "RSJ"
s.version      = "1.0.0"
s.summary      = "A toolset to make swift coding easier"

s.homepage     = "https://github.com/rynssnjn/RSJ"

# ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

s.license      = { :type => "MIT", :file => "LICENSE.md" }

# ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

s.author             = { "Rael San Juan" => "rynssnjn.git@gmail.com" }

# ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

s.platform     = :ios, "9.3"

# ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

s.source       = = { :git => "https://github.com/rynssnjn/RSJ.git", :tag => s.version.to_s }

# ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

s.source_files  = "Source/**/*.swift"

# ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

s.frameworks = "UIKit", "Foundation", "CoreGraphics"

# ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

s.requires_arc = true
s.swift_version = '5.0'

end
