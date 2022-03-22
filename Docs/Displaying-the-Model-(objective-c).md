## Displaying the Model
### @interface CappasityModelViewParams  
Collection of model display parameters. 
 
##### Overview 
Used for customizing the model display.
 
##### Properties
```objective-c
    @property (nonatomic) UIOffset controlsOffset
```
Set offset for Settings buttons and hint label.

```objective-c
    @property (nonatomic) BOOL autoRotate
```
Switch the automatic rotation of the object on/off. 
 
```objective-c
    @property (nonatomic) BOOL autoRun
```
Switch autorun on/off. 
 
```objective-c
    @property (nonatomic) BOOL isLogoShown
```
Show/hide the logo. 
 
```objective-c
    @property (nonatomic) float autoRotateTime
```
Time for a single rotation of the object during automatic rotation. Value specified in seconds. Available when autoRotate is enabled. 
 
```objective-c
    @property (nonatomic) float autoRotateDelay
```
Time delay prior to the start of the automatic rotation. Value specified in seconds. Available when autoRotate is enabled. 
 
```objective-c
    @property (nonatomic) NSInteger autoRotateDir
```
Direction of the automatic rotation. 
 
```objective-c
    @property (nonatomic) BOOL hideAutoRotateOptions
``` 
Show/hide the Automatic Rotation button. Available when autoRotate is enabled. 
 
```objective-c
    @property (nonatomic) BOOL hideSettingsButton
``` 
Show/hide the Settings button. 
 
```objective-c
    @property (nonatomic) BOOL enableImageZoom 
```
Switch zoom mode on/off. 
 
```objective-c
    @property (nonatomic) NSInteger zoomQuality
```
Zoom quality.
 
```objective-c
    @property (nonatomic) BOOL hideZoomOption
```
Show/hide zoom options. 

```objective-c
    @property (nonatomic) BOOL isHintHidden
```
Show/hide hint label. 

```objective-c
    @property (nonatomic) BOOL analytics
```
Enable/disable cookie used by the analytical system.


### @protocol CappasityModelViewDelegate 
Delegate, which methods can be called by the CappasityModelView class object. 
 
##### Overview 
Inherits the CappasityDelegate protocol. 

##### Methods
```objective-c
    - (void)capServiceDidLoadContent
```
Tells the delegate that the download is finished.
 

 
### @interface CappasityModelView 
 
Displays the model with the specified parameters. 
 
##### Overview 
The CappasityModelView class inherits UIView. It can be appointed to an object directly in the storyboard. The "set" method is used to specify the model to be displayed, as well as the display parameters.  
 
In order to enable transition to Cappasity's official website when clicking on the logo,  viewController property must be set. 

To ensure the app is stable, it is recommended to use not more than 10 objects of the CappasityModelView class at the same time.
 
##### Properties and methods
```objective-c
    @property (nonatomic, weak) id <CappasityModelViewDelegate> _Nullable delegate 
```
The delegate object.

```objective-c
    @property (nonatomic, weak) UIViewController * _Nullable viewController
```
The UIViewController object. Must be set for working logo button. 
Clicking on the Cappasity logo will have no effect if this object is not specified. 

```objective-c 
    - (void)stopLoading
```
Stops the loading of the model.

```objective-c 
    - (void)reload
```
Reloading of the model.

```objective-c 
    - (void)setWithModel:(CappasityModel * _Nonnull)model params:(CappasityModelViewParams * _Nonnull)params 
```

Specifies the model to be displayed and the display parameters. 
Calls the delegate method capServiceDidLoadContent: when the download is finished. 
*Parameters:*
*   model - model to be viewed
*   params - collection of model display parameters. 