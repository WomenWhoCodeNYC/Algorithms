function hundredDoors(numDoors){
  //create array to hold answer
  var doors = [];

/*Because you are only opening doors that are perfect squares, you only have to loop through whatever the sqrt is of the number of doors you pass into the function. In this example I am passing in 100 for 100 doors which has a square root of 10, so if I take every number between 1 & 10 and multiply it by itself I will find all the perfect square between 1 & 100. */

    for(var i = 1; i <= Math.sqrt(numDoors); i++){
      //push the open doors to answer array
      doors.push('Door #'+ i*i + ' is open.');
    }

    return doors;
}

hundredDoors(100);

/*Explaination:
  To cut down the time complexity of this problem you have to figure out the mathematical pattern, which in this case is that only the doors whose numbers are perfect squares will be left open. This is because perfect square have an odd number of factors. Take the nummber 4 for example. 4 has the following factors [1, 2, 4] for a total of 3 factors. Because the number of factors is odd, it works out that the door will always be left open.

  Ex: Door #64 (Should end up open because it is a perfect square)
        64 has the following factors: 1,2,4,8,16,32,64
          so door #64 will be toggled on any of the cycles that conincide with one of its factors.

    Cycles:
      0: All doors start out closed
      1: Door is opened
      2: Door is closed
      4: opened
      8: closed
      16: opened
      32: closed
      64: opened

      After the 64th cycle the door is not toggled again and remains open.

*/
