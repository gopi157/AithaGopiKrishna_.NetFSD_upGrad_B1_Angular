let amount=4200;

  let discount = 0;
    let finalAmount = 0;

    if (amount >= 5000) {
        discount = amount * 0.20;   // 20% discount
    } 
    else if (amount >= 3000) {
        discount = amount * 0.10;   // 10% discount
    } 
    else {
        discount = 0;   // No discount
    }

    finalAmount = amount - discount;

    console.log("Purchase Amount: " + amount);
    console.log("Discount: " + discount);
    console.log("Final Payable Amount: " + finalAmount);