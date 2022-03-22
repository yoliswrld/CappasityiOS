## Displaying the Model 
### protocol CappasityModelViewDelegate 
Delegate, which methods can be called by the CappasityModelView class object. 
 
##### Overview 
Inherits the CappasityDelegate protocol. 

##### Methods
```swift
    capServiceDidLoadContent()
```
Tells the delegate that the download is finished.
 

 
### class CappasityModelView 
 
Displays the model with the specified parameters. 
 
##### Overview 
The CappasityModelView class inherits UIView. It can be appointed to an object directly in the storyboard. The "set" method is used to specify the model to be displayed, as well as the display parameters.  
 
In order to enable transition to Cappasity's official website when clicking on the logo,  viewController property must be set. 

To ensure the app is stable, it is recommended to use not more than 10 objects of the CappasityModelView class at the same time.
 
##### Properties and methods
```swift
    var delegate: CappasityModelViewDelegate?
```
The delegate object.

```swift
    var viewController: UIViewController?
```
The UIViewController object. Must be set for working logo button. 
Clicking on the Cappasity logo will have no effect if this object is not specified. 

```swift 
    stopLoading()
```
Stops the loading of the model. 

```swift 
    reload()
```
Reloading of the model.

```swift 
    set(_ model: CappasityModel, 
        controlsOffset: UIOffset? = nil,
        isAutoRotate: Bool? = nil,
        isAutorun: Bool? = nil,
        isLogoShown: Bool? = nil,
        autoRotateTime: Float? = nil,
        autoRotateDelay: Float? = nil,
        autoRotateDirection: CappasityAutoRotateDirection? = nil,
        isAutoRotateOptionsHidden: Bool? = nil,
        isSettingsButtonHidden: Bool? = nil,
        isImageZoomEnabled: Bool? = nil,
        zoomQuality: CappasityZoomQuality? = nil,
        isZoomOptionHidden: Bool? = nil, 
        isHintHidden: Bool? = nil)
```

Specifies the model to be displayed and the display parameters. 
Calls the delegate method capServiceDidLoadContent() when the download is finished.  
*Parameters:*
*   model - model to be viewed. 

*   controlsOffset - set offset for Settings buttons and hint label.
 
*   isAutoRotate - switch the automatic rotation of the object on/off. 
 
*   isAutorun - switch autorun on/off. 
 
*   isLogoShown - show/hide the logo. 
 
*   autoRotateTime - time for a single rotation of the object during automatic rotation. 
                Value specified in seconds. Available when autoRotate is enabled. 
 
*   autoRotateDelay - time delay prior to the start of the automatic rotation. 
                Value specified in seconds. Available when autoRotate is enabled. 
 
*   autoRotateDirection - direction of the automatic rotation. Available when autoRotate is enabled. 
 
*   isAutoRotateOptionsHidden - show/hide the Automatic Rotation button. Available when autoRotate is enabled. 
 
*   isSettingsButtonHidden - show/hide the Settings button. 
 
*   isImageZoomEnabled - switch zoom mode on/off. 
 
*   zoomQuality - zoom quality.
 
*   isZoomOptionHidden - show/hide zoom options. 

*   isHintHidden - show/hide hint label.