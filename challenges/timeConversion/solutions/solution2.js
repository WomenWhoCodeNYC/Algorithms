function convertTime(time) {

    //parseInt time so that the hours becomes integers
    var hours = parseInt(time);
    //declare variable inBetween, which will be used to store the string ":00:00" later
    var inBetween = "";
    //declare twelveAM as the string 0 as a string filler if the time is 12:00:00AM
    var twelveAM = "0";

    //FOR LOOP through the string from index 2-8 so that ":00:00" will be stored into inBetween
    for (var i = 2; i < 8; i++) {
        inBetween += time[i];
    }

    //IF the time contains "AM", 
    if (time.indexOf("AM") >= 0) {
        //THEN the hours should subtract 12;
        hours -= 12;

        //IF hours happens to be negative
        if (hours < 0) {
            //THEN add 12 back to obtain the original hours
            hours += 12;
        }
        //ELSE IF the time contains "PM",
    } else if (time.indexOf("PM" >= 0)) {
        //THEN the hours should add 12;
        hours += 12;

        //IF hours happens to be 24
        if (hours == 24) {
            //THEN subtract 12 to obtain the original hours
            hours -= 12;
        }
    }

    //turn hours into a string and then concatencate to inBetween to obtain HH:MM:SS, declare this as result
    var result = hours.toString().concat(inBetween);

    //IF under some condition where the result becomes "0:00:00" or "1:00:00", concatencate the filler twelveAM into result so that it becomes the correct format.
    if (result[1] === ":") {
        return twelveAM.concat(result)
    }

    //return result to obtain the answer
    return result;

}

convertTime("01:00:00AM"); //output: "01:00:00"
convertTime("12:00:00AM"); //output: "00:00:00"
convertTime("12:00:00PM"); //output: "12:00:00"
convertTime("09:00:00PM"); //output: "21:00:00"
