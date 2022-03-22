# Overview 
 
To use the framework, the current user's alias should be set through the set(userAlias:) method of the [CappasityService](User-Account-(swift)) class. The alias is valid until the application is closed. 

The entire set of user models may be obtained by placing consecutive requests for the subsequent *n* models, where *n* should be no greater than 100. Functionality for obtaining a list of models is contained in the [CappasityModelsList](Obtaining-a-List-of-User-Models-(swift).md) class. 
 
A specific model may be obtained via its id or sku. To do this, you need to make an instance of the [CappasityModel](Working-with-the-Model-(swift)) class, using the corresponding initializers init(withId:delegate:) or init(withSku:delegate:) and calling the receiveInfo() method. 
  
[CappasityModel](Working-with-the-Model-(swift).md) allows access to the following model information: 
-	sku, 
-	model title, 
-	model access type. 
 
To display the model, you can use the [CappasityModelView](Displaying-the-Model-(swift).md) class. The [CappasityModelView](Displaying-the-Model-(swift).md) class inherits the UIView class, so it can be added into the application either through the storyboard or directly in the program. 
 
Interaction with the classes is implemented through delegates. 

### Adding framework to your project

Use [XC Framework](../Frameworks/swift)

### Importing framework
```swift
import Cappasity 
```

--------------------------------------------
[User Account](User-Account-(swift))

[The CappasityDelegate Protocol](The-CappasityDelegate-Protocol-(swift).md)

[Obtaining a List of User Models](Obtaining-a-List-of-User-Models-(swift).md)

[Working with the Model](Working-with-the-Model-(swift).md)

[Displaying the Model](Displaying-the-Model-(swift).md)
