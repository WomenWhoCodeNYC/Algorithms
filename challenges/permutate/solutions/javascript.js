function permutation(inputStr){
  var results = [];

  var inputArr = inputStr.split('');
  function permute(arr, memo) {
    var cur, memo = memo || [];

    for (var i = 0; i < arr.length; i++) {
      cur = arr.splice(i, 1);
      if (arr.length === 0) {
        results.push(memo.concat(cur));
      }
      permute(arr.slice(), memo.concat(cur));
      arr.splice(i, 0, cur[0]);
    }
     var permutation = []
     results.forEach(function(perm){permutation.push(perm.join(""))});
    return permutation;
  }

  return permute(inputArr);
}

// submitted by [Karen J. Mao](https://github.com/mikuya707)
