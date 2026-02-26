const Animal = require('./Animal');

class Cow extends Animal {

    makeSound() {
        console.log("Cow says: Moo Moo 🐮");
    }

}

module.exports = Cow;