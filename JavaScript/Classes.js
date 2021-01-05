// // Javascript has something called Prototype.
function Car(make, model) {
    this.make = make;
    this.model = model;

}

Car.prototype.getDetails = function() {
    return this.make + " " + this.model + " is really cool!"
}

function Car(make, model) {
    this.make = make;
    this.model = model;

    this.getDetails = function() {
        return this.make + " " + this.model + " is really cool!"
    }
}

var myCar = new Car("Jeep", "Compass");
var theirCar = new Car("Honda", "Civic");

console.log(myCar.getDetails());
console.log(theirCar.getDetails());


class fancyCar {
    // Constructors job once the class is made is to initialize all of the variables and functions and put them in the right places.
    constructor(make, model){
        this.make = make;
        this.model = model;
        console.log(this.make + " " + this.model + " " + "was added to the database");
    }

    getDetails() {
        return this.make + " " + this.model + " is really cool!"
    }
}

var yourCar = new fancyCar("Jeep", "Wrangler");
var hisCar = new fancyCar("Honda", "Pilot");

console.log(yourCar.getDetails());
console.log(hisCar.getDetails());

/*
Abstraction

Abstraction means using simple things to represent complexity. We all know how to turn the TV on, but we don’t need to know how it works in order to enjoy it. In Java, abstraction means simple things like objects, classes, and variables represent more complex underlying code and data. This is important because it lets avoid repeating the same work multiple times.
*/

// Double Equals vs Triple Equals
if (3 == "3") {
    console.log("These kinda are the same");
}

// When you have Triple equals we're going to preform a type check. That's why the one above would print and this one below doesn't.
if (3 === "3") {
    console.log("These are the same");
}

// Discussion on recursion is basically I need a base case and a case to run if i'm not at the base. 
class recursion {
    fib(num, memo = {}) {
        if (num in memo) return memo[num];
        if (num <= 2) return 1;
        memo[num] = this.fib(num - 1) + this.fib(num - 2);
        return memo[num];
    }

    factorial(num) {
        if (num == 1) return 1;
        return num * this.factorial(num - 1);
    }
}

var Recursion = new recursion();

console.log(Recursion.fib(6));
console.log(Recursion.factorial(3));
console.log(Recursion.factorial(6));



/*
Encapsulation

Encapsulation. This is the practice of keeping fields within a class private, then providing access to them via public methods. It’s a protective barrier that keeps the data and code safe within the class itself. This way, we can re-use objects like code components or variables without allowing open access to the data system-wide.
*/

(function (){
    var ssn = "000-00-0000";
    console.log(ssn);
})
();
console.log(ssn); // This one shouldn't print


class Person {    
    constructor(name, gender, ssn = 'Fuck') {
        this.name = name;
        this.gender = gender;
        this.ssn = ssn;
    }

    publicMethod () {
        console.log("Hi i'm " + this.name + "i'm a " + this.gender + "and this is my ssn" + this.ssn);
    }
    
    // JS is dumb i don't know how to do this off the top of my head.
    privateMethod () {
        console.log("Hi i'm " + this.name + "i'm a " + this.gender + "and this is my ssn" + this.ssn);
    }
}

var Randy = new Person("Randy", "Male");
var Ashley = new Person("Ashley", "Female");

Randy.publicMethod();
Ashley.privateMethod();

/*
Inheritance

Inheritance. This is a special feature of Object Oriented Programming in Java. It lets programmers create new classes that share some of the attributes of existing classes. This lets us build on previous work without reinventing the wheel.
*/

/*
Polymorphism

Polymorphism. This Java OOP concept lets programmers use the same word to mean different things in different contexts. One form of polymorphism in Java is method overloading. That’s when different meanings are implied by the code itself. The other form is method overriding. That’s when the different meanings are implied by the values of the supplied variables. See more on this below.
*/