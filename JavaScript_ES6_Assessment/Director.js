const Manager=require('./Manager')

class Director extends Manager{

  constructor(name,salary,bonus,stockOptions){
     super(name,salary,bonus);    // call Manager constructor
     this.stockOptions=stockOptions;
 }

    getFullCompensation(){
       // let full = this.salary + this.bonus + this.stockOptions;   [optional] 
        let totalSalary = super.getTotalSalary();
        let full= totalSalary + this.stockOptions;
        console.log(`Full Compensation: ₹${full}`);
 }


}

let d1 = new Director("Gopi Krishna", 100000, 20000, 50000);

 d1.getDetails();            // from Employee
 d1.getTotalSalary();        // from Manager
 d1.getFullCompensation();   // from Director