Pod::Spec.new do |spec|

  spec.name         = "Cappasity"
  spec.version      = "1.0.2"
  spec.summary      = "Cappasity Framework contains functionality for working with models on the Cappasity platform."

  spec.description  = <<-DESC
  Cappasity Framework contains functionality for working with models on the Cappasity platform, i.e.:

  obtaining the models
  obtaining the properties of a given model
  displaying the model
                   DESC

  spec.homepage     = "https://github.com/CappasityTech/CappasityiOS"

  spec.license      = { :type => "Copyright", :text => "Copyright (c) 2021, Cappasity Inc. All rights reserved.", :file => "LICENSE" }

  spec.author             = "Cappasity"

  spec.platform     = :ios

  spec.source       = { :http => "https://github.com/CappasityTech/CappasityiOS/releases/download/v1.0.2/Cappasity.zip" }

  spec.ios.deployment_target = "11.0"
  spec.ios.vendored_frameworks = "Cappasity.xcframework"

end
