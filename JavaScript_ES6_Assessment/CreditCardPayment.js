const Payment = require('./Payment');

class CreditCardPayment extends Payment {

    constructor(cardNumber) {
        super();
        this.cardNumber = cardNumber;
    }

    pay(amount) {
        console.log(`Paid ₹${amount} using Credit Card ending with ${this.cardNumber.slice(-4)}`);
    }

}

module.exports = CreditCardPayment;