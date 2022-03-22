# Overview 
 
To use the framework, the current user's alias should be set through the setWithUserAlias: method of the [CappasityService](User-Account-Login-(objective-c).md) class. The alias is valid until the application is closed. 

The entire set of user models may be obtained by placing consecutive requests for the subsequent *n* models, where *n* should be no greater than 100. Functionality for obtaining a list of models is contained in the [CappasityModelsList](Obtaining-a-List-of-User-Models-(objective-c).md) class. 
 
A specific model may be obtained via its id or sku. To do this, you need to make an instance of the [CappasityModel](Working-with-the-Model-(objective-c).md) class, using the corresponding initializers initWithId:delegate: or initWithSku:delegate: and calling the receiveInfo: method. 
  
[CappasityModel](Working-with-the-Model-(objective-c).md) allows access to the following model information: 
-	sku, 
-	model title, 
-	model access type. 
 
To display the model, you can use the [CappasityModelView](Displaying-the-Model-(objective-c).md) class. The [CappasityModelView](Displaying-the-Model-(objective-c).md) class inherits the UIView class, so it can be added into the application either through the storyboard or directly in the program. 
 
Interaction with the classes is implemented through delegates. 
 
### Adding framework to your project

You can choose between two variants:
* [universal](../Frameworks/objective-c/universal) framework for debugging in the Simulator or on a Device
* [iphoneos](../Frameworks/objective-c/iphoneos) for running on a Device or publishing 

### Importing framework
```objective-c
#import "Cappasity/Cappasity-Swift.h" 
```

--------------------------------------------
[User Account](User-Account-Login-(objective-c).md)

[The CappasityDelegate Protocol](The-CappasityDelegate-Protocol-(objective-c).md)

[Obtaining a List of User Models](Obtaining-a-List-of-User-Models-(objective-c).md)

[Working with the Model](Working-with-the-Model-(objective-c).md)

[Displaying the Model](Displaying-the-Model-(objective-c).md)
