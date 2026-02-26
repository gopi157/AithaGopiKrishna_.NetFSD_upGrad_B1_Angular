class Employee{
    
    constructor(name,salary){
        this.name=name;
        this.salary=salary;
    }

    getDetails(){
        console.log(`Name:${this.name} Salary:${this.salary}`);
    }
}

module.exports=Employee;