import { Car } from "./Car.js";
import { Owner } from "./Owner.js";

export class Garage {

    owner;
    cars = [];

    constructor(owner) {

        if(!(owner instanceof Owner)) {
            throw "Owner must be instance of class Owner";
        }

        this.owner = owner;

    }

    get moneyAvailable() {
        return this.cars.reduce(function(total, car) {
            return total - car.price;
        }, this.owner.money);
    }

    buyCar(car) {

        if(!(car instanceof Car)) {
            throw "Car must be instance of class Car";
        }

        if(car.price > this.moneyAvailable) {
            throw "You cannot buy this car, it's too expensive";
        }

        this.cars.push(car);
    }
}