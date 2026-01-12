if(timer1 >= 1){
	timer1--;
}else if(timer2 >= 1){
		switched = true;
		timer2--
}else{
	timer2 = timer2Max;
	timer1 = timer1Max;
	switched = false;
}

if(switched = true){
	image_index = 1;
}else{
	image_index = 0;
}