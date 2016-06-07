function tr(from, to, str){
	var obj = {};
	var newString = "";

	for(var i = 0; i < from.length; i++){
		obj[from[i]]=to[i];
	}
	for(var j = 0; j<str.length; j++){
		if(obj[str[j]]){
			newString += obj[str[j]];
		}
		else {
			newString += str[j];
		}
	}
	console.log(str, obj, newString);
	console.log(typeof(newString));
}

tr('cat', '123', 'concat');

/*
Submitted by
Caroline: https://github.com/captainm
Samantha: https://github.com/samantids
Katherine: https://github.com/shishkina
*/
