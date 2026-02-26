const Dog = require('./Dog');
const Cat = require('./Cat');
const Cow = require('./Cow');

let animals = [
    new Dog(),
    new Cat(),
    new Cow()
];

animals.forEach(a => a.makeSound());