import UIKit

//Question 1:

class Human: CustomStringConvertible, Equatable, Comparable {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    static func == (lhs: Human, rhs: Human) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
    
    var description: String {
        return "\(name) is \(age) years old"
    }
    
    static func > (lhs: Human, rhs: Human) -> Bool {
        return lhs.age > rhs.age
    }
    static func < (lhs: Human, rhs: Human) -> Bool {
        return lhs.age < rhs.age
    }
    
    
}

var bob = Human(name: "Bob", age: 20)
var tom = Human(name: "Tom", age: 21)
var ameni = Human(name: "Ameni", age: 27)
var john = Human(name: "John", age: 17)
var tim = Human(name: "Tim", age: 30)


print(bob.description)
print(tom.description)

if bob == tom {
    print("They are the same human.")
}
if bob != tom {
    print("They are not the same human.")
}

var people = [bob, tom, tim, john, ameni]

var sortedPeople = people.sorted() {$0 > $1}


// Question 2:

protocol Vehicle {
    var numberOfWheels: Int { get }
    
    func drive()
}

struct Car: Vehicle {
    var numberOfWheels: Int {
        return 4
    }
    
    
    func drive() {
        print("Vroom, Vroom")
    }
}

var myCar = Car()

print(myCar.numberOfWheels)
myCar.drive()


struct Bike: Vehicle {
    var numberOfWheels: Int {
        return 2
    }
    
    func drive() {
        print("Begin Pedaling!")
    }
}

var myBike = Bike()

print(myBike.numberOfWheels)
myBike.drive()

// Question 3:

protocol Bird {
 var name: String { get }
 var canFly: Bool { get }
}

protocol Flyable {
 var airspeedVelocity: Double { get }
}

struct Penguin: Bird {
    var name: String {
        return "Penguin"
    }
    var canFly: Bool {
        return false
    }
    
}

struct eagle: Bird, Flyable {
    var name: String {
        return "Eagle"
    }
    var canFly: Bool {
        return true
    }
    var airspeedVelocity: Double
}

// Question 4:

protocol Transformation {
    mutating func transform()
}

enum SuperHero: Transformation {
    
    case hulk
    case notHulk
    
    mutating func transform() {
        if self == .hulk {
            self = .notHulk
        } else {
            self = .hulk
        }
    }
}

var bruceBanner = SuperHero.hulk

bruceBanner.transform() //hulk
bruceBanner.transform() // nohulk


//Question 6

protocol Communication {
    var message: String { get }
    
    func talk()
}

class Cow: Communication {
    var message: String {
        return "moo"
    }
    
    func talk() {
        print(message)
    }
}

class Dog: Communication {
    var message: String{
        return "woof"
    }
    
    func talk() {
           print(message)
       }
}

class Cat: Communication {
    var message: String{
        return "meow"
    }
    
    func talk() {
           print(message)
       }
}

var myCow = Cow()
var myDog = Dog()
var myCat = Cat()

var animals: [Communication] = [myCow, myCat, myDog]

animals.forEach{print($0.message)}

// Question 6:

