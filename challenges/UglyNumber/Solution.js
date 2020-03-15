
function UglyNumber(number){
    var check = false;
    if(number%2%3%5==0||number%2%3==0||number%2%5==0||number%3%5==0){
        check = true;
      }
    return check;
  }
  
  //test
  UglyNumber(6);