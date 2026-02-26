const Shape=require('./Shape')
const Circle = require('./Circle');
const Rectangle = require('./Rectangle');

class Triangle extends Shape{

    constructor(base, height) {
        super();
        this.base = base;
        this.height = height;
    }
    calculateArea() {
        let area = 0.5 * this.base * this.height;     // (half*b*h)
        console.log(`Triangle Area: ${area}`);
        return area;
    }
}

let shapes = [
    new Circle(5),
    new Rectangle(10, 4),
    new Triangle(6, 8)
];

for (let shape of shapes) {
    shape.calculateArea();     // Polymorphism in action
}