import {isValid} from "./helpers.js";

export class Owner {

    name;
    money;

    constructor(name, money) {

        isValid(name, money);

        this.name = name;
        this.money = money;
    }
}