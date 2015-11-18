function pig_latin_translator(words) {
	var vowel = "aeiou",
	    inputArr = words.split(" "),
	    resultArray = [],
	    index = 0,
	    start,
	    end;

	inputArr.forEach(function(word) {
		for (var i = 0; i < word.length; i++) {
			if (vowel.indexOf(word[i]) !== -1) {
				if (word[i] != "u" || (word[i] === "u" && word[i-1] !== "q")) {
					index = i;
					break;
				}
			}
		}
		
		start = word.substring(index, word.length);
		end = word.substring(0, index) + "ay";
		
		resultArray.push( start + end );
	});

	return resultArray.join(" ");
}

pig_latin_translator("the quick brown fox"); // return 'ethay ickquay ownbray oxfay'