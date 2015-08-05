function repeatify(str, num) {
    if (typeof str !== "string" || typeof num !== 'number')
        return false;
    //creates an empty of size n+1 and uses the str string to join the empty elements
    //since there are "n" spaces between the "n+1" empty elements of the array, the str
    //string will be inserted in each space (resulting in the repeated string we want)
    return Array(num+1).join(str);
}
