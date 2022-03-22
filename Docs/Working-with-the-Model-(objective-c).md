## Working with the Model 
 
### @protocol CappasityModelDelegate 
A collection of methods that may be called by the CappasityModel class object. 
 
##### Overview 
Inherits the CappasityDelegate protocol. 
 
##### Methods
```objective-c
    - (void)capServiceDidReceiveModelInfo;
```
Tells the delegate of having successfully obtained the requested model information. 

```objective-c
    - (void)capServiceWithDidReceive:(UIImage * _Nonnull)preview userInfo:(id _Nullable)userInfo
```  
Returns the requested model preview.  
*Parameters:*
*   userInfo - user information entered during the preview request. 
 
### @interface CappasityModel 
 
Working with the model. 
 
##### Overview 
The object may be initialized via the model's id, sku or link. The receiveInfo: method should then be called to obtain the model information. 
 
```objective-c
    CappasityModel *model = [[CappasityModel alloc] initWithSku: @"123456789" delegate:self]; 
    [model receiveInfo];  

    //... 
    /* the object is ready for use if the request has been successfull (the delegate received the capServiceDidReceiveModelInfo: method). */
    
    printf("%s", [model.sku UTF8String]); 
```
 
There is no need to call the receiveInfo: method if the model has been obtained via a request for a list of user models.

```objective-c
    - (void)receivedWithModels:(NSArray<CappasityModel *> * _Nonnull)models {
        if ([models count] > 0) {
            printf("%s", [modes[0].sku UTF8String]);
        }
    }
```
 
Since the delegate has not been set during the initialization of the object in this case, this should be done directly if needed. 
```objective-c
    CappasityModel *model = models[0]; 
    model.delegate = self;
```
 	 
##### Properties and methods
```objective-c
    @property (nonatomic, weak) id <CappasityModelDelegate> _Nullable delegate
```
The delegate object.

```objective-c
    @property (nonatomic, readonly, copy) NSString * _Nullable id 
```
Model id.

```objective-c
    @property (nonatomic, readonly, copy) NSString * _Nullable title
``` 
Model title.

```objective-c
    @property (nonatomic, readonly, copy) NSString * _Nullable sku
``` 
Model sku. 

```objective-c
    @property (nonatomic, readonly) enum FileAccessType access
```
Model visibility setting.  
FileAccessType values:

                publicAccess        model is visible to everyone 
                unlistedAccess      model is accessible only through a direct link 
                privateAccess       model is visible only to owner 

```objective-c  
    - (nonnull instancetype)initWithId:(NSString * _Nonnull)id delegate:(id <CappasityModelDelegate> _Nullable)delegate
```
Returns an instance of the CappasityModel class  
*Parameters:*
*   id - model id. 
*   delegate - the delegate object. 

```objective-c
    - (nonnull instancetype)initWithSku:(NSString * _Nonnull)sku delegate:(id <CappasityModelDelegate> _Nullable)delegate
```
Returns an instance of the CappasityModel class  
*Parameters:* 
*   sku - model sku. 
*   delegate - the delegate object. 

```objective-c
    - (nullable instancetype)initWithLink:(NSString * _Nonnull)link delegate:(id <CappasityModelDelegate> _Nullable)delegate
```
If the link is valid, an instance of the CappasityModel class is returned

*Parameters:* 
*   link - is a model's direct link (example: https://3d.cappasity.com/u/cappasity/a4b138fc-d1e4-4321-9bb3-2b930a83cfe0).
*   delegate - the delegate object. 

```objective-c   
    - (void)receiveInfo
```
Sends a request to obtain the model information. Calls the delegate method capServiceDidReceiveModelInfo: in the case of a successful execution.   

```objective-c  
    - (void)getPreviewWithWidthPx:(NSUInteger)widthPx heightPx:(NSUInteger)heightPx userInfo:(id _Nullable)userInfo
```
Sends a request to obtain the model preview. Calls the delegate method capServiceWithDidReceive:preview:userInfo:: in the case of a successful execution.  
*Parameters:* 
*   widthPx - width of requested preview in pixels. 
*   heightPx - height of requested preview in pixels. 
*   userInfo - user information, returned together with the obtained model preview. 

```objective-c
    - (void)getPreviewWithWidthPt:(NSUInteger)widthPt heightPt:(NSUInteger)heightPt userInfo:(id _Nullable)userInfo 
```
Sends a request to obtain the model preview. Calls the delegate method capServiceWithDidReceive:preview:userInfo: in the case of a successful execution.  
*Parameters:* 
*   widthPt - width of requested preview in points. 
*   heightPt - height of requested preview in points. 
*   userInfo - user information, returned together with the obtained model preview. 