import { Car } from "./lib/Car.js";
import { Garage } from "./lib/Garage.js";
import { Owner } from "./lib/Owner.js";

import express from 'express';
import bodyParser from "body-parser";


// vytvoření serveru Express na portu 3000

const app = express();

app.use(bodyParser.json());


var garage = null;

function error(status, msg) {
    var err = new Error();

    err.status = status;
    err.error = msg;

    return err;
}

// SERVER ENDPOINTS
app.get("/", function(req, res) {

    if(garage == null) {
        res.status(400).send(error(400, "You need to create garage first"));
    } else {

        res.send(garage);
    }

});

app.post("/create-garage", function(req, res) {

    let body = req.body;

    try {

        garage = new Garage(new Owner(body.name, body.money));

        res.sendStatus(201);

    } catch (e) {

        res.status(400).send(error(400, e));
    } 
});

app.post("/buy-car", function(req, res) {

    let body = req.body;

    try {

        garage.buyCar(body.brand, body.model, body.year, body.price);

        res.send({
            cars: garage.cars,
            moneyAvailable: garage.moneyAvailable
        });

    } catch (e) {

        res.status(400).send(error(400, e));
    }
});

app.listen(3000, function() {

    console.log("Example app server listening on localhost port 3000. Try http://localhost:3000");
});

/*
var garage = null;

try {

    garage = new Garage(new Owner("Petr Kupčík", 1000000));
    
    garage.buyCar("Mazda", "6", 2020, 1000000);
    garage.buyCar("Mazda", "6", 2020, 1000000);

    console.log(garage.cars);

} catch (e) {

    console.log(e);

    console.log(garage);
}
*/
