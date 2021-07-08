# Interview questions for infosys. 


### What was the latest version of iOS you worked with? What do you like about it and why?

Currenty I am using the 12.4 in xcode and  latest version is 14.4 for my personal projects. but for my company our base ios version for ios 9 and to latest. 


### What is an iOS application and where does your code fit into it?

We might think the apps we build are something special because they cover a unique use case. But your typical iOS application is just a giant, glorified run loop. It waits for user input and gets interrupted by external signals such as phone calls, push notifications, home button presses, and other app life cycle events. The only difference is that instead of being just a simple mail loop function that gets launched every time the user taps on your app icon, it has a higher level of abstraction, UIApplication and AppDelegate, that we developers work with.

The rest of the code you write to implement the business logic of your app is placed somewhere in the “trigger points” delegated by that main loop to our app via AppDelegate. That’s pretty much it. Simple. The code you write for your app, though, can be as simple as a method/function call or as complex as VIPER architecture. What you do with it is your choice.

### What features of Swift do you like or dislike? Why?

Its not that versitile as other language at server side. and it is bounded the close sourse plantform i.e iOS 

###  How is memory management handled in iOS?

Swift uses Automatic Reference Counting (ARC). This is conceptually the same thing in Swift as it is in Objective-C. ARC keeps track of strong references to instances of classes and increases or decreases their reference count accordingly when you assign or unassign instances of classes (reference types) to constants, properties, and variables. It deallocates memory used by objects whose reference count dropped to zero. ARC does not increase or decrease the reference count of value types because, when assigned, these are copied. By default, if you don’t specify otherwise, all the references will be strong references.

### What do you know about singletons? Where would you use one and where would you not?

Singleton is a class that returns only one and the same instance no matter how many times you request it.

Singletons are sometimes considered to be an anti-pattern. There are multiple disadvantages to using singletons. The two main ones are global state/statefulness and object life cycle and dependency injection. When you have only one instance of something, it is very tempting to reference and use it everywhere directly instead of injecting it into your objects. That leads to unnecessary coupling of concrete implementation in your code instead of interface abstraction.
Another malicious side effect of “convenient” singletons is global state. Quite often singletons enable global state sharing and play the role of a “public bag” that every object uses to store some state. That leads to unpredictable results and bugs and crashes when this uncontrolled state gets overridden or removed by someone.


### Could you explain what the difference is between Delegate and KVO?

Both are ways to have relationships between objects. Delegation is a one-to-one relationship where one object implements a delegate protocol and another uses it and sends messages to it, assuming that those methods are implemented since the receiver promised to comply to the protocol. KVO is a many-to-many relationship where one object could broadcast a message and one or multiple other objects can listen to it and react. KVO does not rely on protocols. KVO is the first step and the fundamental block of reactive programming (RxSwift, ReactiveCocoa, etc.)



### What design patterns are commonly used in iOS apps?

Typical commonly used patterns when building iOS applications are those that Apple advocates for in their Cocoa, Cocoa Touch, Objective-C, and Swift documentation. These are the patterns that every iOS developer learns. They include MVC, Singleton, Delegate, and Observer.


### What are the design patterns besides common Cocoa patterns that you know of?



Besides commonly used MVC, Singleton, Delegate, and Observer patterns, there are many others that are perfectly applicable in iOS applications: Factory Method, Adapter, Decorator, Command, Template, and many other.

***Factory Method*** is used to replace class constructors, to abstract and hide objects initialization so that the type can be determined at runtime, and to hide and contain switch/if statements that determine the type of object to be instantiated.

***Adapter*** is a design pattern that helps you, as the name suggests, adapt the interface of one object to the interface of another. This pattern is often used when you try to adapt third-party code that you can’t change to your code, or when you need to use something that has an inconvenient or incompatible API.

***Decorator*** is a wrapper around another class that enhances its capabilities. It wraps around something that you want to decorate, implements its interface, and delegates messages sent to it to the underlying object or enhances them or provides its own implementation.

***Command*** is a design pattern where you’d implement an object that represents an operation that you would like to execute. That operation can have its own state and logic to perform the task it does. The main advantages of this design pattern are that you can hide internal implementation of the operation from the users, you can add undo/redo capabilities to it, and you can execute operations at a later point in time (or not at all) instead of right away where the operation was created.

***Template*** is a design pattern where the main concept is to have a base class that outlines the algorithm of what needs to be done. The base class has several abstract methods that are required to be implemented by its concrete subclasses. These methods are called hook methods. Users of the Template Method classes only interact using the base class that implements the algorithm steps; concrete implementations of those steps are supplied by subclasses


### What options do you have for implementing storage and persistence on iOS?

Generally there are the following ways to store data in order from simple to complex:

* In-memory arrays, dictionaries, sets, and other data structures
* NSUserDefaults/Keychain
* File/Disk storage
* Core Data, Realm
* SQLite
* In-memory arrays, dictionaries, sets, and other data structures are perfectly fine for storing data intermediately or if it doesn't have to be persisted.

***NSUserDefaults/Keychain*** are simple key-value stores. One is insecure and the other is secure, respectively.

***File/Disk storage*** is actually a way of writing pieces of data (serialized or not) to/from a disk using NSFileManager.

***Core Data*** and ***Realm*** are frameworks that simplify work with databases.

***SQLite*** is a relational database and is good when you need to implement complex querying mechanics and Core Data or Realm won't cut it.



### What options do you have for implementing networking and HTTP on iOS?

In iOS there are several options to implement HTTP networking. You can go with good old NSURLSession, but unless you abstract it out well enough, it can be daunting to work with. Another option would be to use a wrapper library around it. The most popular solution on iOS is Alamofire/AFNetworking.

Senior developers should keep in mind that building the networking layer in iOS applications does not only mean dealing with HTTP requests. It also means implementing the whole set of tasks your code does related to that: HTTP networking, data serialization, and data mapping.


###  How and when would you need to serialize and map data on iOS?

There are two most common scenarios where you'd need to serialize and map data in iOS applications: receiving or sending data in the networking layer (such as JSON or XML or something else), and persisting or retrieving models in the storage layer (NSData, NSManagedObject, etc.).

Every time you receive JSON or XML or any other kind of response from a backend API, you most likely get it in a JSON or binary or other “inconvenient” format. The first thing you need to do to be able to work with the data you’ve received is to serialize it in something your app understands. At the most simplest and basic level that would be a dictionary or array of objects containing other dictionaries, arrays, and primitives from that response. NSJSONSerialization takes care of that (and soon Codable protocol). The next step is to map that data into domain models of your application. Those would be the model objects the rest of your application works with. You can either do it manually or use a library such as Mantle or SwiftyJSON. The flow of data and serialization/mapping is as follows: binary data -> json -> NSDictionary/NSArray -> your domain model objects.

Similarly in the storage layer, you will need to serialize and map your data to and from your custom domain model objects to the format your storage understands. The “mapping” chain for reading data looks like this: db -> raw data format -> custom domain models, and for writing like this: custom domain models -> raw data format -> db. You'd use the NSManagedObject or NSCoding protocol here to achieve that.

### What are the options for laying out UI on iOS?
Go-to options for laying out views on the screen are good old CGRect Frames and AutoLayout. Frames, along with auto-resizing masks, were used in the past before iOS 6 and are not a preferred option today. Frames are too error-prone and difficult to use because it’s hard to calculate precise coordinates and view sizes for various devices.

Since iOS 6 we have AutoLayout, which is the go-to solution these days and which Apple prefers. AutoLayout is a technology that helps you define relationships between views, called constraints, in a declarative way, letting the framework calculate precise frames and positions of UI elements instead.

There are other options for laying out views, such as ASDK (Texture), ComponentKit, and LayoutKit, that are more or less inspired by React. These alternatives are good in certain scenarios when, for example, you need to build highly dynamic and fast table views and collection views. AutoLayout is not always perfect for that and knowing there are other options is always good.

###  How would you execute asynchronous tasks on iOS?

These days on iOS your go-to solutions for async tasks are NSOperations and GCD blocks. Grand Central Dispatch is a technology that was made to work with multiple background queues that in turn figure out which background thread handles the work. The main thing is that this is abstracted out from you so that you don't have to worry about it. NSOperation is an OOP abstraction on top of GCD that allows you to do more sophisticated async operations, but everything you could achieve with NSOperations you could do with GCD. Many Cocoa frameworks use GCD and/or NSOperations under the hood (NSURLSession for example).

There are alternative ways of handling async work using third-party libraries’ help. The most notable are Promises (PromiseKit), RxSwift, and ReactiveCocoa. RxSwift and ReactiveCocoa are especially good at modeling the asynchronous nature of time and work that needs to be done in the background and coordinated among threads.


### How do you manage dependencies?

A few years back we didn't have any dependency managers on iOS and had to copy-paste and drag and drop third-party code into our projects or to use git submodules. All of those approaches quickly proved to be unmanageable as our codebase and dependencies grew.

These days we have other dependency managers to choose from: CocoaPods, Carthage, and Swift Package Manager (SPM). So far the most dominant and robust one is CocoaPods. It was built in the spirit of the Ruby Bundler gem and is a Ruby gem itself. The way it works is you install the gem, create Podfile in the root directory of your project, declare the pods (libraries) you want to use, and run pod install. That's it.


### How do you debug and profile things on iOS?

There's always the good old NSLogging and printing we can do in iOS apps. Also there are breakpoints you can set using Xcode. For performance of individual pieces of code you could use XCTest's measureBlock.

You can do more advanced debugging and profiling using Instruments. Instruments is a profiling tool that helps you profile your app and find memory leaks and performance issues at runtime.


### Do you code review and/or pair program?

*** Pair programming***  is a practice where two developers work on the same task together on the same machine (hopefully not sharing the same screen and keyboard and having two sets of their own). The goal is to facilitate collaboration, discussion, code review, and QA right where the code gets produced. This process makes knowledge transfer and architectural discussions a common day-to-day thing, preventing people from siloing and becoming "an expert" in a certain part of the code (what happens when that person leaves or gets sick?). It also improves code quality because two sets of eyes are looking at the code as it's written. This process happens for two developers at the same time and is sometimes called synchronous.

*** Pair programming*** is not for everyone and could be an exhausting process if people's personalities do not match. But nevertheless it is one of the most efficient collaboration techniques in software development.

*** Code review***  is a similar process of collaboration and knowledge transfer, but unlike pair programming, it doesn't happen at the same time, and therefore it is asynchronous. With code review, after a developer writes a piece of code or a feature, someone else on the team has a look at it. The reviewer checks if the code makes sense and suggests changes and refactorings to be done to improve it. That opens up an online or offline discussion about the code, which is great. That transfers knowledge about that piece of code to other teammates and helps catch bugs and design smells early on.

Code reviews are a less-involved type of collaboration that achieves much of the same results as pair programming does. It also is an exercise in empathy where you're giving feedback to others on their work.

*** Sonar Report ***

*** Fortify Report ***









































































