class Wallet {

    #balance = 0;   // Private field

    constructor(initialAmount = 0) {
        if (initialAmount > 0) {
            this.#balance = initialAmount;
        }
    }

    addMoney(amount) {
        if (amount > 0) {
            this.#balance += amount;
            console.log(`₹${amount} added successfully.`);
        } else {
            console.log("Enter a valid amount to add.");
        }
    }

    spendMoney(amount) {
        if (amount <= 0) {
            console.log("Enter a valid amount to spend.");
        } 
        else if (amount > this.#balance) {
            console.log("Insufficient balance.");
        } 
        else {
            this.#balance -= amount;
            console.log(`₹${amount} spent successfully.`);
        }
    }

    getBalance() {
        return this.#balance;
    }
}

 let myWallet = new Wallet(1000);  //initial Amount adding: rupees-1000

 myWallet.addMoney(500);
 myWallet.spendMoney(300);

 console.log("Current Balance:", myWallet.getBalance());