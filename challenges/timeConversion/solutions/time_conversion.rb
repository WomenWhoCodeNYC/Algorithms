def time_conversion(time)
	re = /^([0][1-9]|[1][0-2]):[0-5][0-9]:[0-5][0-9](AM|PM)$/
	if (time.length != 10 || (re =~ time).nil?)
		return 'Please enter a valid time in hh:mm:ssA format.'
	end

	meridian = /PM/ =~ time
	hour = time[0, 2].to_i

	if meridian
		if hour < 12
			hour = "#{hour + 12}"
		end
	else
		if hour === 12
			hour = '00'
		elsif hour < 10
			hour = "0#{hour}"
		end
	end

	"#{hour}#{time[2, 6]}"
end
