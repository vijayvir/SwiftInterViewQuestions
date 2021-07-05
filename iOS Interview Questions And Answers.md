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

























