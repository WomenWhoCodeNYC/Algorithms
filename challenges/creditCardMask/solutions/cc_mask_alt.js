// return masked string
function maskify(cc) {

 var maskedString = [];
 for (var i = 0; i < cc.length; i++){
     if (i < cc.length - 4){
          maskedString.push("#");
     } else {
     maskedString.push(cc[i])
     };
 
 
 }
 
 maskedString = maskedString.join("");
 return maskedString;
}


maskify("Skippy");
maskify("13243567897065");
