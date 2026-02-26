const Shape=require('./Shape')

class Circle extends Shape{
 
    constructor(radius){
        super();
        this.radius=radius;
    }

     calculateArea() {
        let area = Math.PI * this.radius * this.radius;
        console.log(`Circle Area: ${area.toFixed(2)}`);
        return area;
    }
}
module.exports = Circle;