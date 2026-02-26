const CreditCardPayment = require('./CreditCardPayment');
const UPIPayment = require('./UPIPayment');
const CashPayment = require('./CashPayment');

let payments = [
    new CreditCardPayment("1234567812345678"),
    new UPIPayment("gopi@upi"),
    new CashPayment()
];

payments.forEach(p => p.pay(1000));