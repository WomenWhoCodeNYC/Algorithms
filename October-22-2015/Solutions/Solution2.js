//javascript solution

function SeriesSum(n) {
    var seriesSum = 0;
    while (n > 0) {
        seriesSum += 1/(4+((n-2)*3))
        n--
    }
    return (seriesSum).toFixed(2)
}

// javascript tests
console.log(SeriesSum(1) === "1.00")
console.log(SeriesSum(2) === "1.25")
console.log(SeriesSum(3) === "1.39")
console.log(SeriesSum(4) === "1.49")
