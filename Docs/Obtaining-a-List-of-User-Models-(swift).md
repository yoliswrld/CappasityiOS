## Obtaining a List of User Models 
### protocol CappasityModelsListDelegate 
 
A collection of methods that may be called by the CappasityModelsList class object. 
 
##### Overview
The method capService(didReceive models:) is called in the case of a successful request. 

Inherits the CappasityDelegate protocol. 
 
 
##### Methods
```swift
    capService(didReceive models: [CappasityModel]) 
```  

Returns the models obtained.  
*Parameters:*
* models - the array of models 

### class CappasityModelsList 
 
Obtaining of the user models. 
 
##### Overview 
The registered user may obtain a list of all owned models sorted by the order in which the models were created. 
 
##### Methods
```swift
    init?(delegate: CappasityModelsListDelegate)
```

Returns an instance of the CappasityModelList class if the user's alias is set through the set(userAlias) method of the CappasityService class.
Returns "nil" otherwise.  
*Parameters:*
* delegate - the delegate object. 

```swift  
    nextModels(count: Int, offset: Int? = nil)
```

Request to obtain the next set of models. 
Parameters: 
* count - the number of models requested. Range of values: [1, 100].

* offset - the index of the model from which the counting starts. In case the value is equal to "nil", the next models in the range are requested. Value range is [0,...).

```swift  
    isValid() -> Bool
```
Verification of class validity. The method returns "false" in the case of an error during the request, and returns "true" otherwise.    

```swift
    clearStatus()
```
A reset of all object properties to their original state. Following this operation, the nextModels method will return the models from the very beginning of the list in the case that the "offset" parameter is not specified. 
