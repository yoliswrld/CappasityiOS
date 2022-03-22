## The CappasityDelegate Protocol
### protocol CappasityDelegate 
 
A protocol of common methods.

All delegates for the main classes are inherited from the CappasityDelegate protocol. 

##### Methods

```swift
    capService(didReceive error: Int, description: String, userInfo: AnyObject?)
```
Tells the delegate of an error occuring during program execution.

*Parameters:*
*   error - error code
*   description - error description
*   userInfo - user information