## Working with the Model 
 
### protocol CappasityModelDelegate 
A collection of methods that may be called by the CappasityModel class object. 
 
##### Overview 
Inherits the CappasityDelegate protocol. 
 
##### Methods
```swift
    capServiceDidReceiveModelInfo()
```
Tells the delegate of having successfully obtained the requested model information. 

```swift
    capService(didReceive preview: UIImage, userInfo: AnyObject?)
```  
Returns the requested model preview.  
*Parameters:*
*   preview - model preview image 
*   userInfo - user information entered during the preview request. 
 
### class CappasityModel 
 
Working with the model. 
 
##### Overview 
The object may be initialized via the model's id, sku or link. The receiveInfo() method should then be called to obtain the model information. 
 
```swift
    let model = CappasityModel(id: "123456789", delegate: self) 
    model.receiveInfo() 

    //... 

    /* The object is ready for use if the request has been successfull 
    (the delegate received the capServiceDidReceiveModelInfo() method). */
 
    print(model.sku)
```
 
There is no need to call the receiveInfo() method if the model has been obtained via a request for a list of user models.

```swift
    //MARK: -- CappasityModelsListDelegate method  	
    func capService(didReceive models: [CappasityModel]) {  	 	
        if models.isEmpty == false { 
            print(models[0].sku) 
        } 
    }
```
 
Since the delegate has not been set during the initialization of the object in this case, this should be done directly if needed. 
```swift
    let model = models[0] 
    model.delegate = self // weak reference
```
 	 
##### Properties and methods
```swift
    var delegate: CappasityModelDelegate?
```
The delegate object.

```swift
    id: String?
```
Model id.

```swift
    title: String?
``` 
Model title.

```swift
    sku: String?
``` 
Model sku. 

```swift
    access: FileAccessType?
```
Model visibility setting.  
FileAccessType values:

        publicAccess        model is visible to everyone
        unlistedAccess      model is accessible only through a direct link
        privateAccess       model is visible only to owner

```swift  
    init(withId id: String, delegate: CappasityModelDelegate?)
```
Returns an instance of the CappasityModel class  
*Parameters:*

*   id - model id. 
*   delegate - the delegate object. 

```swift
    init(withSku sku: String, delegate: CappasityModelDelegate?)
```
Returns an instance of the CappasityModel class  
*Parameters:*

*   sku - model sku. 
*   delegate - the delegate object. 

```swift  
    init?(withLink link: String, delegate: CappasityModelDelegate?)
```
If the link is valid, an instance of the CappasityModel class is returned
*Parameters:*

*   link - is a model's direct link (example: https://3d.cappasity.com/u/cappasity/a4b138fc-d1e4-4321-9bb3-2b930a83cfe0). 
*   delegate - the delegate object. 

```swift   
    receiveInfo()
```
Sends a request to obtain the model information. Calls the delegate method capServiceDidReceiveModelInfo() in the case of a successful execution.   

```swift  
    getPreview(widthPx: UInt, heightPx: UInt, userInfo: AnyObject? = nil)
```
Sends a request to obtain the model preview. Calls the delegate method capService(didReceive preview:userInfo:) in the case of a successful execution.  
*Parameters:*
*   widthPx - width of requested preview in pixels. 
*   heightPx - height of requested preview in pixels. 
*   userInfo - user information, returned together with the obtained model preview. 

```swift
    getPreview(widthPt: UInt, heightPt: UInt, userInfo: AnyObject? = nil)
```
Sends a request to obtain the model preview. Calls the delegate method capService(didReceive preview:userInfo:) in the case of a successful execution.  
*Parameters:* 
*   widthPt - width of requested preview in points. 
*   heightPt - height of requested preview in points. 
*   userInfo - user information, returned together with the obtained model preview. 