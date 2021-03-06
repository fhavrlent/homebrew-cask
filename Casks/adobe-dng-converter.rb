cask "adobe-dng-converter" do
  version "12.4"
  sha256 "b3815537877c4b0505e4c5d4cc8739c8cd6cfbbfddf1a9f2dfb223ef322682c9"

  url "https://download.adobe.com/pub/adobe/dng/mac/DNGConverter_#{version.dots_to_underscores}.dmg"
  appcast "https://supportdownloads.adobe.com/product.jsp?product=106&platform=Macintosh"
  name "Adobe Camera Raw and DNG Converter"
  desc "DNG file converter"
  homepage "https://supportdownloads.adobe.com/product.jsp?product=106&platform=Macintosh"

  pkg "DNGConverter_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: [
    "com.adobe.CameraRawProfiles",
    "com.adobe.DNGConverter",
  ],
            quit:    "com.adobe.DNGConverter"
end
