if(firstFrame){
	firstFrame = false;
	var best = noone;
	var bestDis = room_width;
	if(bottom == noone){
		with(objWaterBottom){
			if(top == noone){
				var dis = point_distance(x,y,other.x,other.y);
				if(dis < bestDis){
					bestDis = dis;
					best = id;
				}
			}
		}
		if(best != noone){
			bottom = best;
			bottom.top = id;
		}
	}
}








