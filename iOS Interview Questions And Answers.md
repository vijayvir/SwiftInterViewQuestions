# iOS Interview Questions And Answers


###  Explain Data Structures

Arrays, Sets, Tuples, and Dictionaries are all collections of data structures that store data in one place.


###  Explain CodingKey Protocol
The CodingKeys enum ( Protocol ) lets you rename specific properties in case the serialized format doesn’t match the requirements of the API. CodingKeys should have nested enum.


###  What is URLSession?
When we want to retrieve contents from a certain URL, we choose to use URLConnection. There are three types of tasks:

* Data tasks: getting data to memory
* Download tasks: downloading file to disk
* Upload tasks: uploading file from disk and receiving response as data in memory


### How do we download images?
With URLSession, we can download an image as a data then convert it from NSData to UIImage lastly we connect it UIImageView IBOutlet. Better way is to use a library. Also with URLSession Adaptable Connectivity API we can built-in connectivity monitoring and run a request if there is no connection. The request will wait and download whenever the resource is available instead of failing.

### How does TestFlight make a difference?
* Multiple builds distribution
* Testing groups
* Internal auto distribution
* Tester metrics
* Increased to 10,000 test users
* Public Link


### How could you set up Live Rendering?
The attribute @IBDesignable lets Interface Builder perform live updates on a particular view. IBDesignable requires Init frame to be defined as well in UIView class.

### What is the difference between Synchronous & Asynchronous task?
Synchronous: waits until the task have completed Asynchronous: completes a task in the background and can notify you when complete

### What is made up of NSError object?
There are three parts of NSError object a domain, an error code, and a user info dictionary. The domain is a string that identifies what categories of errors this error is coming from.


### What is Enum or Enumerations?
**According to Apple’s Swift documentation:**
Managing state, the bits of data that keep track of how the app is being used at the moment, is an important part of a developing your app. Because enumerations define a finite number of states, and can bundle associated values with each individual state, you can use them to model the state of your app and its internal processes

Enum is a type that basically contains a group of related values in the same umbrella but case-less enum won’t allow us to create an instance.

### What is the bounding box?
The bounding box is a term used in geometry; it refers to the smallest measure (area or volume) within which a given set of points.

### Why don’t we use strong for enum property in Objective-C?
Because enums aren’t objects, so we don’t specify strong or weak here.

### What is @synthesize in Objective-C?
synthesize generates getter and setter methods for your property.



### What is @dynamic in Objective-C?
We use dynamic for subclasses of NSManagedObject. @dynamic tells the compiler that getter and setters are implemented somewhere else.

### Why do we use synchronized?
synchronized guarantees that only one thread can be executing that code in the block at any given time.




### What is the difference strong, weaks, read only and copy?
strong, weak, assign property attributes define how memory for that property will be managed.
* **Strong** means that the reference count will be increased and
the reference to it will be maintained through the life of the object

* **Weak** ( non-strong reference ), means that we are pointing to an object but not increasing its reference count. It’s often used when creating a parent child relationship. The parent has a strong reference to the child but the child only has a weak reference to the parent.
Every time used on var
Every time used on an optional type
Automatically changes itself to nil

* **Read-only**, we can set the property initially but then it can’t be changed.

*  **Copy** means that we’re copying the value of the object when it’s created. Also prevents its value from changing.


###  What’s Completion Handler?

Completion handlers are super convenient when our app is making an API call, and we need to do something when that task is done, like updating the UI to show the data from the API call. We’ll see completion handlers in Apple’s APIs like dataTaskWithRequest and they can be pretty handy in your own code.
The completion handler takes a chunk of code with 3 arguments:(NSData?, NSURLResponse?, NSError?) that returns nothing: Void. It’s a closure.

### What’s the difference between the frame and the bounds?
The bounds of a UIView is the rectangle, expressed as a location (x,y) and size (width, height) relative to its own coordinate system (0,0).
The frame of a UIView is the rectangle, expressed as a location (x,y) and size (width, height) relative to the superview it is contained within.


###  What is Responder Chain ?
A ResponderChain is a hierarchy of objects that have the opportunity to respond to events received.


### What is Regular expressions?
Regular expressions are special string patterns that describe how to search through a string.



### What is Operator Overloading?
Operator overloading allows us to change how existing operators behave with types that both already exist. Operators are those little symbols like +, *, and /


### What is ABI?
ABIs are important when it comes to applications that use external libraries. If a program is built to use a particular library and that library is later updated, you don’t want to have to re-compile that application (and from the end user's standpoint, you may not have the source). If the updated library uses the same ABI, then your program will not need to change. ABI stability will come with Swift 5.0



###  What is Singleton Pattern ?
The Singleton design pattern ensures that only one instance exists for a given class and that there’s a global access point to that instance. It usually uses lazy loading to create the single instance when it’s needed the first time.


###  What is Adapter Pattern?
An Adapter allows classes with incompatible interfaces to work together. It wraps itself around an object and exposes a standard interface to interact with that object.

### What is Observer Pattern?
In the Observer pattern, one object notifies other objects of any state changes.
Cocoa implements the observer pattern in two ways: Notifications and Key-Value Observing (KVO).


### Explain MVC
***Models*** — responsible for the domain data or a data access layer which manipulates the data, think of ‘Person’ or ‘PersonDataProvider’ classes.
***Views*** — responsible for the presentation layer (GUI), for iOS environment think of everything starting with ‘UI’ prefix.
***Controller/Presenter/ViewModel*** — the glue or the mediator between the Model and the View, in general responsible for altering the Model by reacting to the user’s actions performed on the View and updating the View with changes from the Model.




### What is the Swift main advantage ?
To mention some of the main advantages of Swift:
* Optional Types, which make applications crash-resistant
* Built-in error handling
* Closures
* Much faster compared to other languages
* Type-safe language
* Supports pattern matching


### Explain lazy in Swift ?
An initial value of the lazy stored properties is calculated only when the property is called for the first time. There are situations when the lazy properties come very handy to developers.


### Explain what is defer ?
defer keyword which provides a block of code that will be executed in the case when execution is leaving the current scope.

###  How to pass a variable as a reference ?
We need to mention that there are two types of variables: reference and value types. The difference between these two types is that by passing value type, the variable will create a copy of its data, and the reference type variable will just point to the original data in the memory.


###  How to pass data between view controllers?
There are 3 ways to pass data between view controllers.
* Segue, in prepareForSegue method (Forward)
* Delegate (Backward)
* Setting variable directly (Forward)


###  What is Concurrency ?
Concurrency is dividing up the execution paths of your program so that they are possibly running at the same time. The common terminology:
 process, thread, multithreading, and others. Terminology;
* Process, An instance of an executing app
* Thread, Path of execution for code
* Multithreading, Multiple threads or multiple paths of execution running at the same time.
* Concurrency, Execute multiple tasks at the same time in a scalable manner.
* Queues, Queues are lightweight data structures that manage objects in the order of First-in, First-out (FIFO).
* Synchronous vs Asynchronous tasks




###  Grand Central Dispatch (GCD)
GCD is a library that provides a low-level and object-based API to run tasks concurrently while managing threads behind the scenes. Terminology;

***Dispatch Queues***, A dispatch queue is responsible for executing a task in the first-in, first-out order.
Serial Dispatch Queue A serial dispatch queue runs tasks one at a time.

***Concurrent Dispatch Queue*** A concurrent dispatch queue runs as many tasks as it can without waiting for the started tasks to finish.

***Main Dispatch Queue*** A globally available serial queue that executes tasks on the application’s main thread.



###  NSOperation — NSOperationQueue — NSBlockOperation

***NSOperation*** adds a little extra overhead compared to GCD, but we can add dependency among various operations and re-use, cancel or suspend them.

***NSOperationQueue,*** It allows a pool of threads to be created and used to execute NSOperations in parallel. Operation queues aren’t part of GCD.

***NSBlockOperation*** allows you to create an NSOperation from one or more closures. NSBlockOperations can have multiple blocks, that run concurrently.



### KVC — KVO
***KVC*** adds stands for Key-Value Coding. It’s a mechanism by which an object’s properties can be accessed using string’s at runtime rather than having to statically know the property names at development time.

***KVO*** stands for Key-Value Observing and allows a controller or class to observe changes to a property value. In KVO, an object can ask to be notified of any changes to a specific property, whenever that property changes value, the observer is automatically notified.




###  Please explain Method Swizzling in Swift
Method Swizzling is a well-known practice in Objective-C and in other languages that support dynamic method dispatching.

Through swizzling, the implementation of a method can be replaced with a different one at runtime, by changing the mapping between a specific #selector(method) and the function that contains its implementation.
To use method swizzling with your Swift classes there are two requirements that you must comply with:
* The class containing the methods to be swizzled must extend NSObject
* The methods you want to swizzle must have the dynamic attribute

###  What is the difference Non-Escaping and Escaping Closures?


The lifecycle of a non-escaping closure is simple:

* Pass a closure into a function
* The function runs the closure (or not)
* The function returns
* 
Escaping closure means, inside the function, you can still run the closure (or not); the extra bit of the closure is stored someplace that will outlive the function. There are several ways to have a closure escape its containing function:
***Asynchronous execution***: If you execute the closure asynchronously on a dispatch queue, the queue will hold onto the closure for you. You have no idea when the closure will be executed and there’s no guarantee it will complete before the function returns.

***Storage***: Storing the closure to a global variable, property, or any other bit of storage that lives on past the function call means the closure has also escaped.

### Explain [weak self] and [unowned self] ?

***unowned ( non-strong reference )*** does the same as weak with one exception: The variable will not become nil and must not be optional.

When you try to access the variable after its instance has been deallocated. That means, you should only use***unowned*** when you are sure, that this variable will never be accessed after the corresponding instance has been deallocated.
However, if you don’t want the variable to be weak AND you are sure that it can’t be accessed after the corresponding instance has been deallocated, you can use unowned.

* Every time used with non-optional types
* Every time used with let

By declaring it [weak self] you get to handle the case that it might be nil inside the closure at some point and therefore the variable must be an optional. A case for using [weak self] in an asynchronous network request, is in a view controller where that request is used to populate the view.


### What is ARC ?
ARC is a compile time feature that is Apple’s version of automated memory management. It stands for Automatic Reference Counting. This means that it only frees up memory for objects when there are zero strong references/ to them.

### Explain #keyPath() ?
Using #keyPath(), a static type check will be performed by virtue of the key-path literal string being used as a StaticString or StringLiteralConvertible. At this point, it’s then checked to ensure that it
A) is actually a thing that exists and
B) is properly exposed to Objective-C.

### Explain Difference between SceneDelegate and AppDelegate

AppDelegateis part of the UIKit framework. The SceneDelegate takes over this roles from the app delegate with iOS13. The concept of a window is replaced by that of a scene. Multiple scenes allow us to build multi-window apps on iOS and iPadOS.

###  What is NSFetchRequest?
NSFetchRequest is the class responsible for fetching from Core Data. Fetch requests are both powerful and flexible. You can use fetch requests to fetch a set of objects meeting the provided criteria, individual values and more.



### Explain NSPersistentContainer
The persistent container creates and returns a container, having loaded the store for the application to it. This property is optional since there are legitimate error conditions that could cause the creation of the store to fail.



###  Explain NSFetchedResultsController
NSFetchedResultsController is a controller, but it’s not a view controller. It has no user interface. Its purpose is to make developers’ lives easier by abstracting away much of the code needed to synchronize a table view with a data source backed by Core Data.
Set up an NSFetchedResultsController correctly, and your table will mimic its data source without you have to write more than a few lines of code.


###  Please explain final keyword into the class?
By adding the keyword final in front of the method name, we prevent the method from being overridden. If we can replace the final class keyword with a single word static and get the same behavior.

###  What is the difference open & public access level?
***open*** allows other modules to use the class and inherit the class; for members, it allows others modules to use the member and override it. For more information,


***public*** only allows other modules to use the public classes and the public members. Public classes can no longer be subclassed, nor public members can be overridden.


### What is the difference fileprivate, private and public private(set) access level ?

* fileprivate is accessible within the current file from different classes or struct,
*  private is accessible within the current declaration. It not be visible outside the file.
* public private(set) means getter is public, but the setter is private.

### What is Internal access ?

Internal access enables entities to be used within any source file from their defining module, but not in any source file outside of the module.
Internal access is the default level of access. So even though we haven’t been writing any access control specifiers in our code, our code has been at an internal level by default.


### What is the benefit of writing tests in iOS apps?

* Writing tests first gives us a clear perspective on the API design, by getting into the mindset of being a client of the API before it exists.
* Good tests serve as great documentation of expected behavior.
* It gives us confidence to constantly refactor our code because we know that if we break anything our tests fail.
* If tests are hard to write its usually a sign architecture could be improved. Following RGR ( Red — Green — Refactor ) helps you make improvements early on.


### Explain Swift Standard Library Protocol ?
There are a few different protocol. Equatable protocol, that governs how we can distinguish between two instances of the same type. That means we can analyze. If we have a specific value is in our array. The comparable protocol, to compare two instances of the same type and sequence protocol: prefix(while:) and drop(while:) [SE-0045].
Swift 4 introduces a new Codable protocol that lets us serialize and deserialize custom data types without writing any special code.


###What is the difference SVN and Git ?
SVN relies on a centralised system for version management. It’s a central repository where working copies are generated and a network connection is required for access.
Git relies on a distributed system for version management. You will have a local repository on which you can work, with a network connection only required to synchronise.



### What is the difference CollectionViews & TableViews?
TableViews display a list of items, in a single column, a vertical fashion, and limited to vertical or horizontal scrolling only.
CollectionViews also display a list of items, however, they can have multiple columns and rows.


### What is Alamofire doing?
Alamofire uses URL Loading System in the background, so it does integrate well with the Apple-provided mechanisms for all the network development. This means, It provides chainable request/response methods, JSON parameter and response serialization, authentication, and many other features. It has thread mechanics and executes requests on a background thread and call completion blocks on the main thread.


### REST, HTTP, JSON — What’s that?

***HTTP*** is the application protocol or set of rules, websites use to transfer data from the web server to client. The client (your web browser or app) use to indicate the desired action:
* GET: Used to retrieve data, such as a web page, but doesn’t alter any data on the server.
* HEAD: Identical to GET but only sends back the headers and none of the actual data.
* POST: Used to send data to the server, commonly used when filling a form and clicking submit.
* PUT: Used to send data to the specific location provided.
* DELETE: Deletes data from the specific location provided.
* REST, or REpresentational State Transfer, is a set of rules for designing consistent, easy-to-use and maintainable web APIs.

***JSON*** stands for JavaScript Object Notation; it provides a straightforward, human-readable and portable mechanism for transporting data between two systems. Apple supplies the JSONSerialization class to help convert your objects in memory to JSON and vice-versa.



###  What problems does delegation solve?
* Avoiding tight coupling of objects
* Modifying behavior and appearance without the need to subclass objects
* Allowing tasks to be handed off to any arbitrary object



### What is the major purposes of Frameworks?

Frameworks have three major purposes:
Code encapsulation
Code modularity
Code reuse
You can share your framework with your other apps, team members, or the iOS community. When combined with Swift’s access control, frameworks help define strong, testable interfaces between code modules.


###  Explain Swift Package Manager
The Swift Package Manager will help to vastly improve the Swift ecosystem, making Swift much easier to use and deploy on platforms without Xcode such as Linux. The Swift Package Manager also addresses the problem of dependency hell that can happen when using many interdependent libraries.
The Swift Package Manager only supports using the master branch. Swift Package Manager now supports packages with Swift, C, C++ and Objective-C.



### What is the difference between a delegate and an NSNotification?
Delegates and NSNotifications can be used to accomplish nearly the same functionality. However, delegates are one-to-one while NSNotifications are one-to-many

### Explain SiriKit Limitations
SiriKit cannot use all app types
Not a substitute for a full app only an extension
Siri requires a consistent Internet connection to work
Siri service needs to communicate Apple Servers.

###Why do we use a delegate pattern to be notified of the text field’s events?
Because at most only a single object needs to know about the event.


### LIFE CYCLE OF VIEW CONTROLLER 
> 
> * loadView()
> * viewDidLoad()
> * viewWillAppear(_:)
> * viewWillLayoutSubviews()
> * viewDidLayoutSubviews()
> * viewDidAppear(_:)
>  

### What is Class ?
A class is meant to define an object and how it works. In this way, a class is like a blueprint of an object.


### What is Object?
An object is an instance of a class.




### What is interface?
The @interface in Objective-C has nothing to do with Java interfaces. It simply declares a public interface of a class, its public API.


###  When and why do we use an object as opposed to a struct?
Structs are value types. Classes(Objects) are reference types.



### What is UIStackView?
UIStackView provides a way to layout a series of views horizontally or vertically. We can define how the contained views adjust themselves to the available space. Don’t miss this article



### How can we add UIKit for Swift Package Manager?
Swift Package Manager is not supporting UIKit. We can create File Template or Framework for other projects.


###  What is Downcasting?
When we’re casting an object to another type in Objective-C, it’s pretty simple since there’s only one way to do it. In Swift, though, there are two ways to cast — one that’s safe and one that’s not.
* as used for upcasting and type casting to bridged type
* as? used for safe casting, return nil if failed
* as! used to force casting, crash if failed. should only be used when we know the downcast will succeed.



### What is the difference ANY and ANYOBJECT ?
According to Apple’s Swift documentation:
Any can represent an instance of any type at all, including function types and optional types.
AnyObject can represent an instance of any class type.





### Please explain SOAP and REST Basics differences ?
Both of them helps us access Web services. SOAP relies exclusively on XML to provide messaging services. SOAP is definitely the heavyweight choice for Web service access. Originally developed by Microsoft.
REST ( Representational State Transfer ) provides a lighter weight alternative. Instead of using XML to make a request, REST relies on a simple URL in many cases. REST can use four different HTTP 1.1 verbs (GET, POST, PUT, and DELETE) to perform tasks.


### What is CoreData ?
Core data is an object graph manager which also has the ability to persist object graphs to the persistent store on a disk. An object graph is like a map of all the different model objects in a typical model view controller iOS application. CoreData has also integration with Core Spotlight.
But Core Data is not thread safe, meaning that, if you load a managed object on one thread, you can’t pass it to another thread and use it safely. This becomes an issue when we want to start introducing threading for performance, so we have two choices.
The first is to keep everything on the main thread, which just means it’s single threaded. Or the second means making changes on background threads and passing managed object IDs and then loading those objects again on the main thread, but that would mean that you’re on the main thread, which puts us right back where we started. Both of these kind of ruin the point of using threading within Core Data and they can add a lot of complexity to the data layer.
There’s also another option for that and it’s to convert the managed object to a plain old Swift object, or a POSO.




### What is Hashable?
Hashable allows us to use our objects as keys in a dictionary. So we can make our custom types that can be compared for its equality using it’s hashValue


### When do you use optional chaining vs. if let or guard?

Optional chaining is a process for querying and calling properties, methods, and subscripts on an optional that might currently be nil. If the optional contains a value, the property, method, or subscript call succeeds; if the optional is nil, the property, method, or subscript call returns nil. Multiple queries can be chained together, and the entire chain fails gracefully if any link in the chain is nil





### How many different ways to pass data in Swift ?
There are many different ways such as Delegate, KVO, Segue, and NSNotification, Target-Action, Callbacks,disk strorage

###  Explain to using Class and Inheritance benefits
* With Overriding provides a mechanism for customization
* Reuse implementation
* Subclassing provides reuse interface
* Modularity
* Subclasses provide dynamic dispatch


###  Explain Common features of Protocols & superclasses
* implementation reuse
* provide points for customization
* interface reuse
* supporting modular design via dynamic dispatch on reused interfaces

### What is Continuous Integration ?
Continuous Integration allows us to get early feedback when something is going wrong during application development. There are a lot of continuous integration tools available.
***Self-hosted server***
Xcode Server
Jenkins
TeamCity

***loud solutions***
TravisCI
Bitrise
Buddybuild



### What is the difference Delegates and Callbacks?


The difference between delegates and callbacks is that with delegates, the NetworkService is telling the delegate “There is something changed.” With callbacks, the delegate is observing the NetworkService.


###  Explain Linked List
Linked List basically consist of the structures we named the Node. These nodes basically have two things. The first one is the one we want to keep. (we do not have to hold single data, we can keep as much information as we want), and the other is the address information of the other node.

Disadvantages of Linked Lists, at the beginning, there is extra space usage. Because the Linked List have an address information in addition to the existing information. This means more space usage.

###  Do you know Back End development ?


node.js + express.js and mongodb. OR, you can learn Vapor or Kitura. Firebase


###  Explain AutoLayout
AutoLayout provides a flexible and powerful layout system that describes how views and the UI controls calculates the size and position in the hierarchy.


### What is the disadvantage to hard-coding log statements ?
First, when you start to log. This starts to accumulate. It may not seem like a lot, but every minute adds up. By the end of a project, those stray minutes will equal to hours.
Second, Each time we add one to the code base, we take a risk of injecting new bugs into our code.


###  What is Pointer ?

A pointer is a direct reference to a memory address. Whereas a variable acts as a transparent container for a value, pointers remove a layer of abstraction and let you see how that value is stored.

###  What is Keychain ?
Keychain is an API for persisting data securly in iOS App. It is secured using a hardware module and is backed up to iCloud.

###  What is the biggest changes in UserNotifications ?
We can add audio, video and images.
We can create custom interfaces for notifications.
We can manage notifications with interfaces in the notification center.
New Notification extensions allow us to manage remote notification payloads before they’re delivered.

### Explain the difference between atomic and nonatomic synthesized properties

***atomic*** : It is the default behaviour. If an object is declared as atomic then it becomes thread-safe. Thread-safe means, at a time only one thread of a particular instance of that class can have the control over that object.
***nonatomic***: It is not thread-safe. We can use the nonatomic property attribute to specify that synthesized accessors simply set or return a value directly, with no guarantees about what happens if that same value is accessed simultaneously from different threads. For this reason, it’s faster to access a nonatomic property than an atomic one.

### How could we get device token ?

There are two steps to get device token. First, we must show the user’s permission screen, after we can register for remote notifications. If these steps go well, the system will provide device token. If we uninstall or reinstall the app, the device token would change.

### What is Encapsulation ?
Encapsulation is an object-oriented design principles and hides the internal states and functionality of objects. That means objects keep their state information private.


### What is big-o notation ?

An algorithm is an impression method used to determine the working time for an input N size. The big-o notation grade is expressed by the highest value. And the big-o notation is finding the answer with the question of O(n). Here is a cheat sheet and swift algorithm club. For example;

```
For Loops big-o notation is O(N). Because For Loops work n times.

Variables (var number:Int = 4) big-o notation is O(1).
```

 
### Explain throw
We are telling the compiler that it can throw errors by using the throws keyword. Before we can throw an error, we need to make a list of all the possible errors you want to throw.


### What is Protocol Extensions?
We can adopt protocols using extensions as well as on the original type declaration. This allows you to add protocols to types you don’t necessarily own.

###  What is three triggers for a local notification ?

Location, Calendar, and Time Interval. A Location notification fires when the GPS on your phone is at a location or geographic region. Calendar trigger is based on calendar data broken into date components. Time Interval is a count of seconds until the timer goes off.

###  Explain Selectors in ObjC

Selectors are Objective-C’s internal representation of a method name.


### What is Remote Notifications attachment’s limits ?
 
 We can be sent with video or image with push notification. But maximum payload is 4kb. If we want to sent high quality attachment, we should use Notification Service Extension.
 
 
### What is ARC and how is it different from AutoRelease?
 Autorelease is still used ARC. ARC is used inside the scope, autorelease is used outside the scope of the function.
 
 
 
### Are you using CharlesProxy ? Why/why not ?
 
 If I need a proxy server that includes both complete requests and responses and the HTTP headers then I am using CharlesProxy. With CharlesProxy, we can support binary protocols, rewriting and traffic throttling.
 
 
### Explain unwind segue
 An unwind segue moves backward through one or more segues to return the user to a scene managed by an existing view control
 
 
### Explain UNNotification Content
 UNNotification Content stores the notification content in a scheduled or delivered notification. It is read-only.
 
 
### Explain NSManagedObjectContext
 Its primary responsibility is to manage a collection of managed objects.
 
 
 
###  Explain service extension
 The service extension lets us the chance to change content in the notification before it is presented.
 
  
### Explain content extension
 
 The content extension gives us the tools, we have in an app to design the notification.
 
 
 
### What is intrinsic content size?
 
 Every view that contains content can calculate its intrinsic content size. The intrinsic content size is calculated by a method on every UIView instance. This method returns a CGSize instance
 
### What is Instruments?
 Instrument is a powerful performance tuning tool to analyze that performance, memory footprint, smooth animation, energy usage, leaks and file/network activity.
 
### What is Deep Linking?
 Deep linking is a way to pass data to your application from any platform like, website or any other application. By tapping once on link, you can pass necessary data to your application.
 
### What is Optional Binding ?
 We are going to take optional value and we are going to bind it non optional constant. We used If let structure or Guard statement.
 
 
### Explain super keyword in child class
We use the super keyword to call the parent class initializer after setting the child class stored property.

### Explain Polymorphism
Polymorphism is the ability of a class instance to be substituted by a class instance of one of its subclasses.

### Explain In-app Purchase products and subscriptions


* Consumable products: can be purchased more than once and used items would have to re-purchase.

* Non-consumable products: user would be able to restore this functionality in the future, should they need to reinstall the app for any reason. We can also add subscriptions to our app.

* Non-Renewing Subscription: Used for a certain amount of time and certain content.

* Auto-Renewing Subscription: Used for recurring monthly subscriptions.


### What is Protocol?

A protocol defines a blueprint of methods, properties and other requirements that suit a particular task or piece of functionality. The protocol can then be adopted by a class, structure, or enumeration to provide an actual implementation of those requirements.



### Explain JSONEncoder and JSONDecoder in Swift4

* Decodable protocol, which allows us to take data and create instances of our object, populated with the data passed down from the server.

* Encodable protocol to take instances of our object and turn it into data. With that data, we can store it to the files, send it to the server, whatever you need to do with it.



### What is NotificationCenter ?

NotificationCenter is an observer pattern, The NSNotificationCenter singleton allows us to broadcast information using an object called NSNotification.

The biggest difference between KVO and NotificationCenter is that KVOtracks specific changes to an object, 
while NotificationCenter is used to track generic events.


### Why is inheritance bad in swift?
* 
* We cannot use superclasses or inheritance with Swift value types.
* Upfront modelling
* Customization for inheritance is an imprecise


###  Explain Sequence in Swift

Sequence is a basic type in Swift for defining an aggregation of elements that distribute sequentially in a row. All collection types inherit from Sequence such as Array, Set, Dictionary.



### Explain .gitignore

.gitignore is a file extension that you tell Git server about document types, and folders that you do not want to add to the project or do not want to track changes made in Git server projects.


###  What is an “app ID” and a “bundle ID” ?

A bundle ID is the identifier of a single app. For example, if your organization’s domain is xxx.com and you create an app named Facebook, you could assign the string com.xxx.facebook as our app’s bundle ID.
An App ID is a two-part string used to identify one or more apps from a single development team. You need Apple Developer account for an App ID

###  What is Factory method pattern?
Factory method pattern makes the codebase more flexible to add or remove new types. To add a new type, we just need a new class for the type and a new factory to produce it like the following code

###  Explain AVFoundation framework

We can create, play audio and visual media. AVFoundation allows us to work on a detailed level with time-based audio-visual data. With it, we can create, edit, analyze, and re-encode media files. AVFoundation has two sets of API, one that’s video, and one that is audio.

###  What’s the difference between a xib and a storyboard?
Both are used in Xcode to layout screens (view controllers). A xib defines a single View or View Controller screen, while a storyboard shows many view controllers and also shows the relationship between them.


### Explain how to add frameworks in Xcode project?

* First, choose the project file from the project navigator on the left side of the project window

* Then choose the target where you want to add frameworks in the project settings editor

* Choose the “Build Phases” tab, and select “Link Binary With Libraries” to view all of the frameworks

* To add frameworks click on “+” sign below the list select framework and click on add button.



### Explain IteratorProtocol

The IteratorProtocol protocol is tightly linked with the Sequence protocol. Sequences provide access to their elements by creating an iterator, which keeps track of its iteration process and returns one element at a time as it advances through the sequence. There are very good examples on the differences ofIteratorProtocol from for loop and while loop.


### Explain differences between WKWebView and UIWebView
WKWebView has own cookie storage and its not share by the whole app and all other web views like in the case of (UIWebView).



### What is offset?

If we want to arrange the button at Bottom-Right of superview with spacing 20 Pts, we use view attribute of UIButton or UILabel for reference to view attribute of superview and use .offset(x) for set padding.

### Explain rethrows keyword

rethrows is a pretty special keyword that you can use in conjunction with closures that can throw errors.

The rethrows keyword indicates to the compiler that the outer function is a throwing function only if the closure passed in throws an error that is propagated to the current scope.

Basically with rethrows, we can use throw inside the closure. When the error handlers are called within the function we use throws.


### Explain @objc inference

We can tag a Swift declaration with @objc to indicate that it should be available to Objective-C. In Swift 3 many declarations were automatically inferred to be made available to Objective-C. The most common place for this is any Swift method we want to refer to using a selector.


### What is Safe area ?
Safe area allows us to create constraints to keep our content from being hidden by UIKit bars like the status, navigation or tab bar. Previously we used topLayoutGuide and bottomLayoutGuide.



###  Explain Content offset

When we scroll a scrollView, it modifies a property known as content offset. Content offset is a point at which the origin of the contentView, that is the bounds rectangle, is offset from the origin of the scrollView.
Using this value, the scrollView can compute its new bounds and redraw any of its subviews.


###   Explain Queues
Queues are used to store a set of data, but are different in that the first item to go into this collection, will be the first item to be removed. Also well known as FIFO which means, ‘first in first out’.


###  What is the difference between Array vs NSArray ?
Array can only hold one type of data, NSArray can hold different types of data. The array is value type, NSArray is immutable reference type.

### What is themutating keyword?

The mutating keyword is used to let variables be modified in a struct or enum. If we need to modify the properties of a value type, we have to use the mutating keyword in the instance method.


### What’s the difference between MKAnnotation and MKPointAnnotation?

***MKAnnotation***  is a protocol. Typically, we will create a NSObject subclass that implements this protocol. Instances of this custom class will then serve as your map annotation.

***MKPointAnnotation*** is a class that implements MKAnnotation. We can use it directly if we want our own business logic on the annotation.


### What is the difference Stack and Heap ?

Our code takes up some space in the iOS. The size of this is sometimes fixed and sometimes it can change according to what the user will enter during the program. Basically we have two different methods because of this difference: Stack and Heap

Stack is used and automatically removes itself from memory after work is finished. But in Heap the user could do it by writing manual code for deleting from memory.

Stack;

* Stack is easy to use.
* It’s kept in RAM on the computer.
* Created variables are automatically deleted when they exit the stack.
* It is quite fast compared to Heap.
* Constructed variables can be used without a pointer.

Heap;

* Compared to Stack, it is quite slow.
* It creates memory problems if not used correctly.
* Variables are used with pointers.
* It is created at runtime.


###  Explain UIBezierPath

UIBezierPath class allows us define custom paths that describe any shape, and use those paths to achieve any custom result we want.


### Explain ObjectMapper for parsing JSON data
ObjectMapper converts JSON data to strongly typed model objects. It has a two-way binding between JSON and deal with generic object and nested objects. Also we can manage subclasses.

### Explain CAShapeLayer
CAShapeLayer is a CALayer subclass, its provides hardware-accelerated drawing of all sorts of 2D shapes, and includes extra functionality such as fill and stroke colors, line caps, patterns and more.

###  Explain coordinate systems in views

UIkit defines a default coordinate system with the origin in the top left corner, and axis extending to the right, and down from the origin point. Views are laid out within this coordinate system to position and size them.


### What is the purpose of using IBAction and IBOutlet ?

IBAction and IBOutlet are macros defined to denote variables and methods that can be referred to in Interface Builder.

IBAction resolves to void and IBOutlet resolves to nothing, but they signify to Xcode and Interface builder that these variables and methods can be used in Interface builder to link UI elements to your code.


### Explain AlamoFire Benefits


* AlamoFire creates a route. This means we can create the request and execute it to the server by one static function.
* AlamoFire provides method chaining for the requests that’s returned, which makes it easy for adding headers,and handling responses.
* AlamoFire has multiple response handlers hat’s returned in binary form, text, parse JSON, and we can even use multiple of these for a given request.
* AlamoFire has the method chaining allows for response validation. We can call validation to check for the status code of the HTTP response, the content type, or any custom validation you might need to do for our app.
* AlamoFire gives us that use a couple of protocols, URLConvertible, and URLRequestConvertible. These protocols can be passed in when creating a request.
* AlamoFire provides extensions can be passed in to create the request.


### Explain Semaphore in iOS
When we do thread operations on iOS, it works. The application is quite effective in preventing data from interfering with different processes while downloading data to the device. Or we can time out the process by checking the wait time.
As a structure, more than one working process is kept waiting according to the situation and the other process are engaged in the processes such as entering the circuit when completed.

### Explain Tuples

Tuples are a compound type in Swift, that means we can hold multiple values like a structure. Tuples hold very value types of data but we created data structures (like dictionaries).

### Explain the difference between Generics and AnyObject in Swift
Generics are type safe, meaning if you pass a string as a generic and try to use as a integer the compiler will complain and you will not be able to compile your. Because Swift is using Static typing, and is able to give you a compiler error.

If you use AnyObject, the compiler has no idea if the object can be treated as a String or as an Integer. It will allow you to do whatever you want with it.


### Explain how does UIEdgeInsetsMake work?

According to the documentation: We can use this method to add cap insets to an image or to change the existing cap insets of an image. In both cases, you get back a new image and the original image remains untouched. We use the amount of pixels what we want to make unstretchable in the values of the UIEdgeInsetsMake function. Goal is to keep original rounded corners of image. With UIEdgeInsets, we can specify how many pixels to the top, left, bottom, and right stretching the image.
Syntax : UIEdgeInsets(top: 0, left: 0, bottom: 10, right: 0)

###  What is the meaning of id ?
id is a pointer to any type, it always points to an Objective-C object. The AnyObject protocol is similar and it helps bridge the gap between Swift and Objective-C.



### Why it is better to use higher-order functions?

Functions that take another function as a parameter, or return a function, as a result, are known as higher-order functions. Swift defines these functions as CollectionType.
The very basic higher-order function is a filter.


### What is the difference between UIKit and SwiftUI ?

UIKit is an imperative event-driven framework for building User Interfaces for iOS platform. SwiftUI is a declarative framework for building User Interfaces for building User Interfaces for Apple platform.


### Explain Implicit Expression

Implicit Expression well-known name is Implicit Member Expression which is a way to access a member of a type. We use it to prevent global constant usage.

### Explain subscripts
Subscripts are analogous to methods. Classes, structures, and enumerations can define subscripts, which are shortcuts for accessing the member elements of a collection, list, or sequence.

###  What is the difference between CustomStringConvertible and CustomDebugStringConvertible?

If the value is a String, return that value. If the value is CustomStringConvertible or CustomDebugStringConvertible, return String(reflecting:)

### What are bundles?
Bundles are how iOS represents our executable code and other resources stored on our drive. Most important thing is, bundles are responsible for loading the localized strings used by your app.


###  Explain UICollectionViewFlowLayout

UICollectionViewFlowLayout is automatically trying to fit in as many items as it can within a line before it wraps to the next one. We can get multiple columns if we change our item size.

### Explain the difference between a while loop and repeat while
A while loop checks the condition before the loop code, whereas repeat while checks the condition after. If we want to check each time to see the condition is true, we have to use for in loop.

### What does agile process do?
The agile process only takes into account the needs specified by the customer, converted into a user story and prioritized by the customer. In short, the agile process does not think about the future.


### Why is everything in a do-catch block?
In Swift, errors are thrown and handled inside of do-catch blocks. This allows us to customize our error handling and perform specific actions based on the error. With a do-catch statement, we can usetry. This allows us to check meaningful errors.

### Explain enumerated()
According to Apple, if we need the index for each element along with its value, you can use enumerated()method to iterate over the array.

### Explain NSCache

NSCache is an NSDictionary that automatically clears itself out when our app receives a memory warning. NSCache is thread-safe.

### Explain abs() function

You use the abs() function to calculate the positive difference between the one value to another value


### What is the difference between try? and try! ?

try? allows us to ignore our error to become nil. We use try! it for our function to never encounter an error.


###  Explain OptionSet

Option sets are similar to enums, but OptionSet designs to work more than one at a time. We can say enums are an exclusive state, OptionSet is an inclusive state. For creating an OptionSet, there is one requirement which is the rawValue the property of integer type, and an initializer. Option sets aren’t collections.

### Explain the Single Responsibility Principle

It is a software development principle that enables us to easily understand objects and object functions. It ranks first among the SOLID principles. According to this principle, it must be the only task of a method or class. If we speak for the method, the function loaded in a method should not be more than one.



### What is the difference between setUp() and tearDown() in XCTestCase ?

We use these two methods for allocation. setUp method calls before test methods are executed. tearDown method calls after all test methods are executed for cleaning up any changes we made in data.

### Explain Asset Catalogs
We use asset catalogs to store images such as icons or images. Since iOS 11, we can store named colors in asset catalogs. Another lesser-known feature of asset catalogs is that we can store arbitrary data assets. With iOS 13 now we can define dark mode icons and images




### What can breakpoint do?

* We can add our forgotten line of code at a breakpoint by double-clicking the breakpoint and opening the editor.
* We can change the state of our app. p is another LLDB command to see a debug representation of the current object.
* We can use the po command in the console to print a debug description and see the current values.
* We can change the value to test our code, without having compile and return your code.


###  Explain Opaque Return Types

I have a class that uses a protocol. It returns an error when I return this class with a function. Because the Swift compiler does not know what these classes are. Therefore, there is no problem when ***some*** is added to the return class, struct or protocol of the error function.


###Explain Autoclosures
@autoclosure creates an automatic closure around the expression. When we write an expression, @autoclosure is automatically wrapped into a closure.




### Explain UIViewRepresentable requirements

The UIViewRepresentable protocol has two requirements we need to add: a makeUIView(context:) method and an updateUIView(_:context:) a method that configures the view and responds to any changes.



### Explain Scene Delegate

With scene delegate, iOS applications can have more than one scene that allows us to build multi-window apps on iOS and iPadOS.