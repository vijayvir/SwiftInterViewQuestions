## iOS Interview Question

### What is Cocoa and Cocoa Touch?

Cocoa | Cocoa Touch
--- | --- |
1. Application development environments for OS X |1. Application development environments for iOS
2. Includes the Foundation and AppKit frameworks | 2. Includes Foundation and UIKit frameworks
3. Used to refer any class/object which is based on the Objective-C runtime & inherits from the root class | 3. Used to refer the application development using any programmatic interface


### 2. Which JSON framework is supported by iOS?
1. iOS supports SBJson framework.
1. SBJson is a JSON parser and generator for Objective-C.
1. It provides flexible APIs and additional control, making JSON handling easier.

### 3. What is the difference between atomic and nonatomic properties? Which is the default for synthesized properties?

Properties specified as atomic always return a fully initialized object. This also happens to be the default state for synthesized properties. But, if you have a property for which you know that retrieving an uninitialized value is not a risk (e.g. if all access to the property is already synchronized via other means), then setting it to nonatomic can give you better performance than atomic.

### 4. Differentiate ‘app ID’ from ‘bundle ID’. Explain why they are used.
An App ID is a two-part string used to identify one or more apps from a single development team. The string consists of a Team ID and a bundle ID search string, with a period (.) separating the two parts. The Team ID is supplied by Apple and is unique to a specific development team, while the bundle ID search string is supplied by the developer to match either the bundle ID of a single app or a set of bundle IDs for a group of apps.

The bundle ID defines each App and is specified in Xcode. A single Xcode project can have multiple targets and therefore output multiple apps. A common use case is an app that has both lite/free and pro/full versions or is branded multiple ways.


###5. Which are the ways of achieving concurrency in iOS?
The three ways to achieve concurrency in iOS are:

* Threads
* Dispatch queues
* Operation queues

### 6. Explain the different types of iOS Application States.
The different iOS application states are:

* ***Not running state***: when the app has not been launched or was running but was terminated by the system.

* ***Inactive state***: when the app is running in the foreground but is currently not receiving events. An app stays in this state briefly as it transitions to a different state. The only time it stays inactive is when the user locks the screen or the system prompts the user to respond to some event such as a phone call or SMS message.

* ***Active state*** : when the app is running in the foreground and is receiving events. This is the normal mode for foreground apps.

* ***Background state***: when the app is in the background and executing code. Most apps enter this state briefly on their way to being suspended. However, an app that requests extra execution time can remain in this state for some time. Also, an app being launched directly into the background enters this state instead of the inactive state.

* ***Suspended state***: A suspended app remains in memory but does not execute any code. When a low-memory condition occurs, the system may purge suspended apps without notice to make more space for the foreground app.

### 7. Which is the framework that is used to construct an application’s user interface for iOS?
The UIKit framework is used to develop the application’s user interface for iOS. It provides event handling, drawing model, windows, views, and controls specifically designed for a touch screen interface.

### 8. Which is the application thread from where UIKit classes should be used? 
UIKit classes should be used only from an application’s main thread.

###9. When would you say that an app is not in a running state?
An app is said to be in ‘not running’ state in the following cases:
– When it is not launched.
– When it gets terminated by the system during running.

### 10. What is Swift and what is Objective-C?
Objective-C is the primary programming language you use to write software for OS X and iOS. It’s a superset of the C programming language and provides object-oriented capabilities and a dynamic runtime. Objective-C inherits the syntax, primitive types, and flow control statements of C and adds syntax for defining classes and methods. It also adds language-level support for object graph management and object literals while providing dynamic typing and binding, deferring many responsibilities until runtime.

Swift is a new programming language for iOS, OS X, watchOS, and tvOS apps that builds on the best of C and Objective-C, without the constraints of C compatibility. Swift adopts safe programming patterns and adds modern features to make programming easier, more flexible, and more fun. Swift feels familiar to Objective-C developers and is friendly to new programmers.

### 11. What is SpriteKit and what is SceneKit?
SpriteKit is a framework for easy development of animated 2D objects.

SceneKit is a framework inherited from OS X that assists with 3D graphics rendering.

SpriteKit, SceneKit, and Metal are expected to power a new generation of mobile games that redefine what iOS devices’ powerful GPUs can offer.

### 12. What are iBeacons?
iBeacon.com defines iBeacon as Apple’s technology standard which allows Mobile Apps to listen for signals from beacons in the physical world and react accordingly. iBeacon technology allows Mobile Apps to understand their position on a micro-local scale, and deliver hyper-contextual content to users based on location. The underlying communication technology is Bluetooth Low Energy.



### 13. What is an autorelease pool?
Every time – autorelease is sent to an object, it is added to the inner-most autorelease pool. When the pool is drained, it simply sends – releases to all the objects in the pool.
Autorelease pools are a convenience that allows you to defer sending -release until “later”. That “later” can happen in several places, but the most common in Cocoa GUI apps is at the end of the current run loop cycle.

### 14. Differentiate between the ‘assign’ and ‘retain’ keywords.
Retain -specifies that retain should be invoked on the object upon assignment. It takes ownership of an object.
Assign – specifies that the setter uses simple assignment. It is used on attributes of scalar type like float, int.

### 15.Outline the class hierarchy for a UIButton until NSObject.
UIButton inherits from UIControl, UIControl inherits from UIView, UIView inherits from UIResponder, UIResponder inherits from the root class NSObject.


### 16 Consider the following UITableViewCell constructor:

**- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
What is the purpose of the reuseIdentifier?** What is the advantage of setting it to a non-nil value?


The reuseIdentifier is used to group together similar rows in an UITableView; i.e., rows that differ only in their content, but otherwise have similar layouts.

A UITableView will normally allocate just enough UITableViewCell objects to display the content visible in the table. If reuseIdentifier is set to a non-nil value, then when the table view is scrolled, UITableView will first attempt to reuse an already allocated UITableViewCell with the same reuseIdentifier. If reuseIdentifier has not been set, the UITableView will be forced to allocate new UITableViewCell objects for each new item that scrolls into view, potentially leading to laggy animations.

### 17 What are different ways that you can specify the layout of elements in a UIView?

Here are a few common ways to specify the layout of elements in a UIView:

* Using InterfaceBuilder, you can add a XIB file to your project, layout elements within it, and then load the XIB in your application code (either automatically, based on naming conventions, or manually). Also, using InterfaceBuilder you can create a storyboard for your application.

* You can your own code to use NSLayoutConstraints to have elements in a view arranged by Auto Layout.

*  You can create CGRects describing the exact coordinates for each element and pass them to UIView’s - (id)initWithFrame:(CGRect)frame method.


### 18 What are “strong” and “weak” references? Why are they important and how can they be used to help control memory management and avoid memory leaks?


By default, any variable that points to another object does so with what is referred to as a “strong” reference. A retain cycle occurs when two or more objects have reciprocal strong references (i.e., strong references to each other). Any such objects will never be destroyed by ARC (iOS’ Automatic Reference Counting). Even if every other object in the application releases ownership of these objects, these objects (and, in turn, any objects that reference them) will continue to exist by virtue of those mutual strong references. This therefore results in a memory leak.

Reciprocal strong references between objects should therefore be avoided to the extent possible. However, when they are necessary, a way to avoid this type of memory leak is to employ weak references. Declaring one of the two references as weak will break the retain cycle and thereby avoid the memory leak.

To decide which of the two references should be weak, think of the objects in the retain cycle as being in a parent-child relationship. In this relationship, the parent should maintain a strong reference (i.e., ownership of) its child, but the child should not maintain maintain a strong reference (i.e., ownership of) its parent.

For example, if you have Employer and Employee objects, which reference one another, you would most likely want to maintain a strong reference from the Employer to the Employee object, but have a weak reference from the Employee to thr Employer.



### 19 Describe managed object context and the functionality that it provides.


***A managed object context*** (represented by an instance of NSManagedObjectContext) is basically a temporary “scratch pad” in an application for a (presumably) related collection of objects. These objects collectively represent an internally consistent view of one or more persistent stores. A single managed object instance exists in one and only one context, but multiple copies of an object can exist in different contexts.

You can think of a managed object context as an intelligent scratch pad. When you fetch objects from a persistent store, you bring temporary copies onto the scratch pad where they form an object graph (or a collection of object graphs). You can then modify those objects however you like. Unless you actually save those changes, though, the persistent store remains unchanged.

Key functionality provided by a managed object context includes:

* ***Life-cycle management***. The context provides validation, inverse relationship handling, and undo/redo. Through a context you can retrieve or “fetch” objects from a persistent store, make changes to those objects, and then either discard the changes or commit them back to the persistent store. The context is responsible for watching for changes in its objects and maintains an undo manager so you can have finer-grained control over undo and redo. You can insert new objects and delete ones you have fetched, and commit these modifications to the persistent store.
* ***Notifications.*** A context posts notifications at various points which can optionally be monitored elsewhere in your application.
* ***Concurrency***. Core Data uses thread (or serialized queue) confinement to protect managed objects and managed object contexts. In OS X v10.7 and later and iOS v5.0 and later, when you create a context you can specify the concurrency pattern with which you will use it using initWithConcurrencyType:.




### Consider the two methods below:
```application:willFinishLaunchingWithOptions ```
```application:didFinishLaunchingWithOptions``
**What is the usage of these methods and what is difference between them?**

Both methods are present in the AppDelegate.swift file. They are use to add functionality to the app when the launching of app is going to take place.

The difference between these two methods are as follows:

* ```application:willFinishLaunchingWithOptions```—This method is your app’s first chance to execute code at launch time.

* ```application:didFinishLaunchingWithOptions—```This method allows you to perform any final initialization before your app is displayed to the user.



### How could you set up Live Rendering?
The attribute @IBDesignable lets Interface Builder perform live updates on a particular view. IBDesignable requires Init frame to be defined as well in UIView class.










