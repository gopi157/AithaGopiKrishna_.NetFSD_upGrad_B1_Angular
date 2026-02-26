const Payment = require('./Payment');

class CashPayment extends Payment {

    pay(amount) {
        console.log(`Paid ₹${amount} in Cash.`);
    }

}

module.exports = CashPayment;