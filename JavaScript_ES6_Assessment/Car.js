const Vehicle = require('./Vehicle');

class Car extends Vehicle{

    constructor(brand,speed,fuelType){
        super(brand,speed);
        this.fuelType=fuelType;
    }

    showDetails(){
        console.log(`
            Brand:${this.brand}
            Speed:${this.speed}
            FuelType:${this.fuelType}`);
    }
}

let Fortuner=new Car('Toyata',220,'Petrol');

Fortuner.showDetails();