class BankAccount{

     #balance=0;
    
    constructor(accountHolder,initialBalance=0){
        this.accountHolder=accountHolder;
        this.initialBalance=initialBalance;
    }
    deposite(amount){
     if(amount>0){
     this.#balance=this.#balance+amount;
     console.log(`Amount Deposited:${amount}`);
     } 
             
      else
         console.log('Please Enter Valid Amount..');
    }

    withdraw(amount){
        if(amount>0 && amount!==null && amount<=this.#balance){
            
            this.#balance=this.#balance-amount;

            console.log(`Amount withdrawn of ${amount} rupees`);
        }
        else
            console.log(`Insufficient Amount!Can't  withdraw..`)
         
    }

    checkBalance(){
        console.log(`Balance:${this.#balance}`);

           return this.#balance;
        
    }
}

let b1=new BankAccount('Gopi',500);

console.log('Account Holder Name:'+ b1.accountHolder);

b1.checkBalance();

b1.deposite(500);


b1.withdraw(300);

console.log(b1.checkBalance());


