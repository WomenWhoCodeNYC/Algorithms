/*github: @JuiceCrawl, @ashes74, @Junkyard4000, @RyanFairist, @si74, @jes_andra*/


function getNewCode(code,key){
    var result;
	if (code >= 97 && code <= 122){
        result = ((code + key - 96) % 26) + 96; 
    }else if(code >= 65 && code <= 90){
        result = ((code + key - 64) % 26) + 64;   
    }else{
        result = code;
    }
    return result;
}

function cencrypt(s, key){
    var result = "";
	for (i = 0 ; i < s.length; i++){
	    var code = s.charCodeAt(i);
	    result += String.fromCharCode(getNewCode(code,key));
    }
    return result;
}

console.log(cencrypt("zFabc",3));