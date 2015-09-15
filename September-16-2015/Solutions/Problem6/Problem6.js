var paths = {};
function memoizer(x, y, max){
	if(paths[[x,y,max]]){
		return paths[[x,y,max]];
	}
	else{
		return paths[[x,y,max]] = paths2Bottom(x, y, max);
	}
}
function paths2Bottom(x, y, max){
	if (x == max || y == max){
		return 1;
	}
	return memoizer(x+1, y, max) + memoizer(x, y+1, max);
}
paths2Bottom(0,0,20);
