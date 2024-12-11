function findLeader(){
var best = noone;
var bestDis = 100000;
with(objEnemy){
    if(id == other.id){
		continue; 
		}
    if(!isLeader){
		continue; 
		}
    var dis = point_distance(x, y, other.x, other.y);
    if(dis < bestDis){
        best = id;
        bestDis = dis;
    }
}

if(best != noone){
    leader = best;
}
}