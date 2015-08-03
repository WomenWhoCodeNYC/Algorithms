function reverse(obj) {
   var newObj = { };
   //you could use a `for var key in obj` loop but then should check Object.hasOwnProperty(key)
   //See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/hasOwnProperty for more
   var objKeys = Object.keys(obj);
   for (var i=0; i < objKeys.length; i++) {
       var curVal = obj[objKeys[i]];
       if (typeof newObj[curVal] === "undefined") {
          newObj[curVal] = [ objKeys[i] ];
       } else {
          newObj[curVal].push(objKeys[i]);
       }
   }
   return newObj;
}
