const Animal = require('./Animal');

class Dog extends Animal {

    makeSound() {
        console.log("Dog says: Boww Boww 🐶");
    }

}

module.exports = Dog;