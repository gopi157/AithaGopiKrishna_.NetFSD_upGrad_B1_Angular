const Payment = require('./Payment');

class UPIPayment extends Payment {

    constructor(upiId) {
        super();
        this.upiId = upiId;
    }

    pay(amount) {
        console.log(`Paid ₹${amount} using UPI ID: ${this.upiId}`);
    }

}

module.exports = UPIPayment;