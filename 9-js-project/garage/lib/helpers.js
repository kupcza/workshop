
export function isUndefined(...arg) {

    arg.forEach(function(value) {

        if(typeof value === "undefined") {

            throw "Missing argument";
        }
    });
}

export function isValid(...arg) {

    arg.forEach(function(value) {

        if(typeof value === "undefined" || value.length === 0) {

            throw "Missing argument";
        }
    });
}