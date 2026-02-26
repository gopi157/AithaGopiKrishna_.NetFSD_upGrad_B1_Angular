const Animal = require('./Animal');

class Cat extends Animal {

    makeSound() {
        console.log("Cat says: Meow Meow 🐱");
    }

}

module.exports = Cat;