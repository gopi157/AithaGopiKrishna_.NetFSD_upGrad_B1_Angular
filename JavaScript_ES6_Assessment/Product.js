class Product{

    constructor({name,price,category='General'}){
        this.name=name;
        this.price=price;
        this.category=category;
    }

      // Template Literal
      getDetails() {
        console.log(`Product: ${this.name}
         Price: ₹${this.price}
         Category: ${this.category}`);
    }

            // Arrow function inside class
    applyDiscount = (discountPercent = 10) => {
        const discountAmount = (this.price * discountPercent) / 100;
        this.price -= discountAmount;
        console.log(`Discount Applied: ${discountPercent}%
        New Price: ₹${this.price}`);
    };

                // Using Spread Operator
    cloneProduct() {
        const cloned = { ...this };   // shallow copy
        return cloned;
    }
}

    const p1 = new Product({
    name: "Laptop",
    price: 50000,
    category: "Electronics"
   });

     p1.getDetails();

     p1.applyDiscount(20);

     const p2 = new Product({
     name: "Notebook",
     price: 50             // category will default to "General"
     });

     p2.getDetails();

     const copiedProduct = p1.cloneProduct();
    console.log("Cloned Product:", copiedProduct);
