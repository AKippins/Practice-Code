// ==UserScript==
// @name       Marist Time Sheet Quick Update 
// @namespace  http://use.i.E.your.homepage/
// @version    1.0
// @description  Provides quick hour logging for full time Marist Employees
// @match      https://ssb.banner.marist.edu/PROD11G/bwpkteci.P_UpdateTimeInOut
// @copyright  2014+, Aaron Kippins
// ==/UserScript==

//INSTALLATION: Use either Greasemonkey for Firefox or Tampermonkey for Chrome to run the script.
//Click new script, then copy and paste the entire text of this document.
 
//USAGE: Add your Time Sheet information within the fields provided. Each group is a Time Slot in a day. 
//For each Time Slot place your Time In within the '' on the first line of the group.
//Then whether it's AM or PM in the '' on the second line of the group.
//Place your Time Out within the ''on the third line of the group.
//Then place whether it's AM or PM in the '' on the fourth line of the group.
//If you haven't worked any hours in a slot leave the '' blank.
//When you go to your time sheet click enter hours on the DAY BEFORE you want to start entering hours for 
//and click the Next Day Button. If you don't want Hours for that day click the Delete button. 

//Working on a part time version and functionality that clicks through the week for you. Also on a way to skip the logging for the weekends.

if(window.find('Saturday,') || window.find('Sunday,')){
	document.getElementsByName('ButtonSelected')[2].click();
} else if(window.location == 'https://ssb.banner.marist.edu/PROD11G/bwpkteci.P_UpdateTimeInOut'){
    //First Time Slot
    document.getElementsByName('TimeIn')[0].value = '09:30'; //Enter time in the format XX:XX within the '' after value
    document.getElementsByName('TimeInAm')[0].value = 'AM';  //Enter either AM or PM within the '' after value
    document.getElementsByName('TS_TimeOut')[0].value = '12:30'; //Enter time in the format XX:XX within the '' after value
    document.getElementsByName('TimeOutAm')[0].value = 'PM'; //Enter either AM or PM within the '' after value
    
    //Second Time Slot
    document.getElementsByName('TimeIn')[1].value = '01:00'; //Enter time in the format XX:XX within the '' after value
    document.getElementsByName('TimeInAm')[1].value = 'PM'; //Enter either AM or PM within the '' after value
    document.getElementsByName('TS_TimeOut')[1].value = '06:00'; //Enter time in the format XX:XX within the '' after value
    document.getElementsByName('TimeOutAm')[1].value = 'PM'; //Enter either AM or PM within the '' after value
    
    //Third Time Slot
    document.getElementsByName('TimeIn')[2].value = ''; //Enter time in the format XX:XX within the '' after value
    document.getElementsByName('TimeInAm')[2].value = ''; //Enter either AM or PM within the '' after value
    document.getElementsByName('TS_TimeOut')[2].value = ''; //Enter time in the format XX:XX within the '' after value
    document.getElementsByName('TimeOutAm')[2].value = ''; //Enter either AM or PM within the '' after value
    
    //Fourth Time Slot
    document.getElementsByName('TimeIn')[3].value = ''; //Enter time in the format XX:XX within the '' after value
    document.getElementsByName('TimeInAm')[3].value = ''; //Enter either AM or PM within the '' after value
    document.getElementsByName('TS_TimeOut')[3].value = ''; //Enter time in the format XX:XX within the '' after value
    document.getElementsByName('TimeOutAm')[3].value = ''; //Enter either AM or PM within the '' after value
    
    //Fifth Time Slot
    document.getElementsByName('TimeIn')[4].value = ''; //Enter time in the format XX:XX within the '' after value
    document.getElementsByName('TimeInAm')[4].value = ''; //Enter either AM or PM within the '' after value
    document.getElementsByName('TS_TimeOut')[4].value = ''; //Enter time in the format XX:XX within the '' after value
    document.getElementsByName('TimeOutAm')[4].value = ''; //Enter either AM or PM within the '' after value
    
    if (window.find('Monday,') || window.find('Tuesday,') || window.find('Wednesday,') || window.find('Thursday,')){
		document.getElementsByName('ButtonSelected')[2].click();
	};
    
};




