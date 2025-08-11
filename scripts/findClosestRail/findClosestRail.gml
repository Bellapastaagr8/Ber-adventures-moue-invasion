function findClosestRail(tar, disMax, exclude, skipOne){
    if(is_undefined(skipOne)){ skipOne = false; }

    var best = noone;
    var bestDis = disMax * 2;
    with(tar){
        var dis = point_distance(other.x, other.y, x, y);
        if(dis < bestDis && dis < disMax && (dis > 0 or !skipOne) ){
            var onExcludeList = false;
            for(var i=0; i<array_length(exclude); i++){
                if(id == exclude[i]){
                    onExcludeList = true;
                }
            }
            if(!onExcludeList){
                best = id;
                bestDis = dis;
            }
        }
    }
    return best;
}