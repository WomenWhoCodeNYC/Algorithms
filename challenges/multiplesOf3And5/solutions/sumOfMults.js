//Completed by juicecrawl and ashes74

function sumOfMults(num){
    var m3 = 0, m5 = 0, array = [];
    
    //Create an array with all multiples of 3 < num
    for (var i=1; m3 +3 <num; i++){
        m3 = 3*i;
        array.push(m3);
    }
    
    //Create an array with all multiples of 5< num (excluding multiples of 3)
    for(var j = 1; m5 +5 < num; j++){
        m5 = 5*j;
        
        if(m5 % 3 !== 0){
            array.push(m5);
        }
    }
    console.log(array)
    
   return array.reduce(function(a,b){
        return a + b;
    });
}

sumOfMults(50);

