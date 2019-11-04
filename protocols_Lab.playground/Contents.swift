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

