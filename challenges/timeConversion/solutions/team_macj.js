function convertTo24(originalTime){
	var isAM = originalTime.toUpperCase().indexOf("AM") >= 0;
	
	var timeOnly = originalTime.replace(/[^\d:]/g, "");
	
	var timeArray = timeOnly.split(":");
	var hourNumeric = parseInt(timeArray[0]);
	hourNumeric = hourNumeric % 12;  
	
	if(!isAM){
		hourNumeric += 12
	}
	
	if(hourNumeric < 10){
		timeArray[0] = "0" + hourNumeric;	
	}else{
		timeArray[0] = hourNumeric;
	}
	
	var newTime = timeArray.join(":");
	
	console.log("Original Time:", originalTime, ", 24hr Time:", newTime);
}

//convertTo24("12:00:30AM");
//convertTo24("12:40:55PM");
//convertTo24("03:22:40AM");
//convertTo24("08:45:20PM");
