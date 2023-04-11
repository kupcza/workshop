import { Car } from "./Car.js";
import { Owner } from "./Owner.js";

export class Garage {

    owner;
    cars = [];

    #carLastId = 0;

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

    buyCar(brand, model, year, price) {

        if(price > this.moneyAvailable) {
            throw "You cannot buy this car, it's too expensive";
        }

        this.cars.push(new Car(this.getNewCarId(), brand, model, year, price));
    }

    getNewCarId() {

        this.#carLastId++;

        return this.#carLastId;
    }
}