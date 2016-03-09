function totalVol(arr) {
    var peak = Math.max.apply(null, arr);
    var vol = 0

    for (var height = peak; height > 0; height--) {
        var peaksAtHeightLevel = peakIndicesMaker(arr,height);
        vol += volAtLevel(peaksAtHeightLevel);
    }
    return vol;
}

function peakIndicesMaker(arr,level) {
    var peakIndices = [];

    for (var i = 0; i < arr.length; i++) {
        if(arr[i] >= level) {
            peakIndices.push(i);
        }
    }
    return peakIndices;
}

function volAtLevel(peakIndices) {
    var levelVol = 0
    if(peakIndices.length === 1) {
        return 0;
    } else {
        for (var i = 0; i < (peakIndices.length-1); i++) {
            levelVol += (peakIndices[i+1] - (peakIndices[i]+1));
        };
    }
    return levelVol
}
