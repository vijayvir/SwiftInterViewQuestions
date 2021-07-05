# iOS Interview Questions And Answers

###How could you set up Live Rendering?
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
