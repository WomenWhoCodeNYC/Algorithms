function productOfIntegers(array){

    var result=[];

    //We multiply the values until the array length
    var productSoFar=1; // We initialize in one so when we multiply in that index it returns its own: 3 X 1 = 3
    for(var i=0; i < array.length; i++)
    {
        result[i] = productSoFar;
        productSoFar *= array[i];
    }

    //We multiply the values reading the array backwards
    productSoFar=1; //We need to initialize teh product again to 1
    for(var j= array.length-1; j>=0;j--)
    {
        result[j] *= productSoFar;
        productSoFar *= array[j];
    }

    return result;
}

console.log(productOfIntegers([1, 7, 3, 4]));