class User {

    #password;   // private property

    constructor(password) {
        this.#password = password;   // use setter
    }

    // Setter with validation
    setPassword(newPassword) {
        if (newPassword.length >= 6) {
            this.#password = newPassword;
            console.log("Password set successfully.");
        } else {
            console.log("Password must be at least 6 characters long.");
        }
    }

    // Getter
    getPassword() {
        return this.#password;
    }
}



let user = new User("gopi123");
console.log(user.getPassword());

