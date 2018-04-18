//assumes that all inputs are ints including interest (e.g. 10 instead of 0.10)

let invest = (value, interest, yrs) => {

    if (yrs <= 0) {
        return value;
    }

    value += (value * (interest / 100));
    yrs--;

    return invest(value, interest, yrs);
}

console.log(invest(1000, 10, 2)); //1210
