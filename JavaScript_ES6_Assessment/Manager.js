const Employee = require('./Employee');

class Manager extends Employee{

    constructor(name,salary,bonus){
        super(name,salary); //call parent constructor
        this.bonus=bonus;
    }

    getTotalSalary(){
       let totalSalary= this.salary+this.bonus;
       console.log(`Total Salary :${totalSalary}`);
       return totalSalary;
    }
}

module.exports=Manager;