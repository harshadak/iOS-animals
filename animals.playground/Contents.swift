//: Playground - noun: a place where people can play

import UIKit

class Animal {
    var name: String
    var health: Int = 100
    init(name: String) {
        self.name = name
    }
    func displayHealth() {
        print(self.health)
    }
}

var animal1 = Animal(name: "Dog")
animal1.displayHealth()

class Cat: Animal {
    func growl() {
        print("Rawr!")
    }
    override init(name: String) {
        super.init(name: name)
        self.health = 150
    }
    func run() {
        print("Running")
        self.health -= 10
        
    }
}
var cat1: Cat = Cat(name: "Pepper")
//cat1.displayHealth()
//cat1.run()
//cat1.displayHealth()

class Cheetah: Cat {
    override init(name: String) {
        super.init(name: name)
    }
    override func run() {
        if (self.health >= 50) {
            print("Running Fast")
            self.health -= 50
        }
    }
    func sleep() {
        if (self.health < 151) {
            self.health += 50
        } else {
            self.health = 200
        }
    }
}

var cheetah1: Cheetah = Cheetah(name: "Charlie")
print("------------")
cheetah1.displayHealth()
cheetah1.run()
cheetah1.displayHealth()

class Lion: Cat {
    override init(name: String) {
        super.init(name: name)
        self.health = 200
    }
    override func growl() {
        print("Roar!! I am the King of the Jungle!")
    }
}


var lion1: Lion = Lion(name: "Mufasa")
lion1.growl()
lion1.displayHealth()










