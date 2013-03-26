var timeInSecs;
var ticker;
function startTimer(secs){
    var currTimestamp = new Date().getTime();
    timeInSecs = parseInt(secs, 10) - 1;
    ticker = setInterval("tick()",1000);   // every second
}

function tick() {
    var secs = timeInSecs;
    if (secs>0) {
        timeInSecs--;
    }
    else {
    clearInterval(ticker); // stop counting at zero
    // startTimer(60);  // remove forward slashes in front of startTimer to repeat if required
    }
    document.getElementById("countdown").innerHTML = secs;
}
