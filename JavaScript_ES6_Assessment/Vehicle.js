class Vehicle{

    constructor(brand,speed){
        this.brand=brand;
        this.speed=speed;
    }

    start(){
        console.log(`Vehicle Started..Durrrr`);
    }
    
}

module.exports = Vehicle;   // ✅ Export class directly