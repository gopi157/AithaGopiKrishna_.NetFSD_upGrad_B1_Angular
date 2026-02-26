const Shape=require('./Shape')

class Rectangle extends Shape{

    constructor(length,breadth){
        super();
        this.length=length;
        this.breadth=breadth;
    }

    calculateArea(){
        let area=this.length*this.breadth;
        console.log(`Rectangle Area: ${area}`);
        return area;
    }
}
module.exports = Rectangle;