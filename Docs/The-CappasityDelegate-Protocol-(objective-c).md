## The CappasityDelegate Protocol
### @protocol CappasityDelegate 
 
A protocol of common methods.

All delegates for the main classes are inherited from the CappasityDelegate protocol. 

##### Methods

```objective-c
    - (void)capServiceWithDidReceive:(NSInteger)error description:(NSString * _Nonnull)description userInfo:(id _Nullable)userInfo
```
Tells the delegate of an error occuring during program execution.  
*Parameters:*
*   code - error number
*   description - error description
*   userInfo - user information
