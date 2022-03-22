## Obtaining a List of User Models 
### @protocol CappasityModelsListDelegate 
 
A collection of methods that may be called by the CappasityModelsList class object. 
 
##### Overview
The method capServiceWithDidReceive:models: is called in the case of a successful request. 

Inherits the CappasityDelegate protocol. 
 
 
##### Methods
```objective-c
    - (void)capServiceWithDidReceive:(NSArray<CappasityModel *> * _Nonnull)models;
```  
Returns the models obtained.  
*Parameters:*
*   models - the array of models 

### @interface CappasityModelsList 
 
Obtaining of the user models. 
 
##### Overview 
The registered user may obtain a list of all owned models sorted by the order in which the models were created. 
 
##### Methods
```objective-c
    - (nullable instancetype)initWithDelegate:(id <CappasityModelsListDelegate> _Nonnull)delegate
```
Returns an instance of the CappasityModelList class if the user's alias is set through the setWithUserAlias: method of the CappasityService class.            
Returns "null" otherwise.  
*Parameters:*
*   delegate - the delegate object. 
 
```objective-c  
    - (BOOL)nextModelsWithCount:(NSInteger)count offset:(NSInteger)offset 
```
Request to obtain the next set of models. 
*Parameters:*
*   count - the number of models requested. Range of values: [1, 100].
*   offset - the index of the model from which the counting starts. Value range is [0,...).


```objective-c 
    - (BOOL)nextModelsWithCount:(NSInteger)count
```
Request to obtain the next set of models.   
*Parameters:*
*   count - the number of models requested. Range of values: [1, 100].

```objective-c  
    - (BOOL)isValid 
```
Verification of class validity. The method returns "false" in the case of an error during the request, and returns "true" otherwise.    

```objective-c
    - (void)clearStatus
```
A reset of all object properties to their original state. Following this operation, the nextModelsWithCount: method will return the models from the very beginning of the list.  
