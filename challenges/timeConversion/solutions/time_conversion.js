// Time converion
function timeConversion(time) {
	var re = /^([0][1-9]|[1][0-2]):[0-5][0-9]:[0-5][0-9](AM|PM)$/;
	if(time.length !== 10 || time.match(re) == null) {
		return 'Please enter a valid time in hh:mm:ssA format.'
	}

	var meridian = time.match(/AM/) ? 'AM' : 'PM';
	var hour = parseInt(time.substr(0,2));

	if(meridian == 'PM') {
		if(hour < 12) {
			hour = (hour + 12).toString();
		}
	} else if(meridian == 'AM') {
		if(hour === 12) {
			hour = '00';
		} else if((hour = hour.toString()).length < 2) {
			hour = '0' + hour;
		}
	}

	return hour + time.substr(2, 6);
}
module.exports = timeConversion;
