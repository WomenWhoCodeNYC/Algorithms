// javascript solution
function convertTime(input) {

    var hours, amPM;
    
    hours = parseInt(input.slice(0, 2));  
    amPM = input.slice(-2);
    
    if (amPM === 'PM') {
        if (hours < 12) {
            hours = hours + 12;
        } 
    } else {
        if (hours === 12) {
            hours = '00';
        } else {
            hours = hours > 10 ? hours : '0' + hours;
        }
    }

    return (hours + input.slice(2, -2));
}

console.log(convertTime('12:00:00PM')); // return 12:00:00
console.log(convertTime('06:59:59PM')); // return 18:59:59
console.log(convertTime('12:00:00AM')); // return 00:00:00
console.log(convertTime('04:59:59AM')); // return 04:59:59
console.log(convertTime('11:00:00AM')); // return 11:00:00
