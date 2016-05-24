## Time Conversion
Problem found on [HackerRank](http://www.hackerrank.com)

You are given time in AM/PM format. Can you convert this into a 24-hour format?

Note: Midnight is 12:00:00AM or 00:00:00. Noon is 12:00:00PM.

submitted by https://github.com/lei-clearsky

#Python program to convert time
#Author: Ruth Naebeck

def convert_time(sTime):
    sPM = "PM";
    sColon = ":";

    if sTime == "12:00:00AM":
        print "00:00:00"
    elif sTime == "12:00:00PM":
        print "12:00:00"
    elif sTime.find(sPM) > -1:
        iTime = int(sTime[:sTime.find(sColon)]) + 12
        sMilitaryTime = str(iTime) + sTime[sTime.find(sColon):]
        print sMilitaryTime[:-2]
    else:
        print sTime[:-2]

convert_time("05:00:00AM")
convert_time("05:00:00PM")
convert_time("12:00:00AM")
convert_time("12:00:00PM")
