//feed in an array of 10 numbers, row, col, or box
function is10Done(row){
	var seen = {};
	var done = true;
	row.forEach(function(num){
		seen[num] ? done = false : seen[num] = num;
	})
	return done
}

function isDone(arrs) {
	var isNotDone = [];
	arrs.forEach(function(arr) {
		if(!is10Done(arr)) {
			isNotDone.push("oh no!");
		}
	})
	return isNotDone.length === 0;
}

function initBoxObj() {
	var boxObj = {};
	for(var i = 1; i<10; i++) {
		var name = "box" + i;
		boxObj[name] = [];
	}
	return boxObj;
}


//will eventually return an object with rows, cols, and boxes (all arrays of arrs)
function deconstruct(board){
	var colObj = {};
	var boxObj = initBoxObj();
	var boardObj = {
		cols: [],
		rows: board,
		boxes: []
	}
	board.forEach(function(row, rowIdx) {
		row.forEach(function(item, idx){
			//create collumns
			colObj[idx] ?
				colObj[idx].push(item) :
				colObj[idx] = [item];
			//create boxes
			if (rowIdx < 3) {
				//box 1, 2, or 3
				if(idx < 3) {
					boxObj.box1.push(item)
				} else if (idx < 6) {
					boxObj.box2.push(item)
				} else {
					boxObj.box3.push(item)
				}
			} else if (rowIdx < 6) {
				//box 4, 5, or 6
				if(idx < 3) {
					boxObj.box4.push(item)
				} else if (idx < 6) {
					boxObj.box5.push(item)
				} else {
					boxObj.box6.push(item)
				}
			} else {
				//box 7, 8, or 9
				if(idx < 3) {
					boxObj.box7.push(item)
				} else if (idx < 6) {
					boxObj.box8.push(item)
				} else {
					boxObj.box9.push(item)
				}
			}
		})

	})
	Object.keys(colObj).forEach(function (key){
		boardObj.cols.push(colObj[key]);
	})
	Object.keys(boxObj).forEach(function (key){
		boardObj.boxes.push(boxObj[key]);
	})
	return boardObj
}


function doneOrNot(board){
	var boardObj = deconstruct(board);
	return isDone(boardObj.cols) && isDone(boardObj.rows) && isDone(boardObj.boxes)?
		'Finished!' : 'Try again!';


}

doneOrNot([[5, 3, 4, 6, 7, 8, 9, 1, 2],
             [6, 7, 2, 1, 9, 5, 3, 4, 8],
             [1, 9, 8, 3, 4, 2, 5, 6, 7],
             [8, 5, 9, 7, 6, 1, 4, 2, 3],
             [4, 2, 6, 8, 5, 3, 7, 9, 1],
             [7, 1, 3, 9, 2, 4, 8, 5, 6],
             [9, 6, 1, 5, 3, 7, 2, 8, 4],
             [2, 8, 7, 4, 1, 9, 6, 3, 5],
             [3, 4, 5, 2, 8, 6, 1, 7, 9]])// should return "Finished!"

doneOrNot([[5, 3, 4, 6, 7, 8, 9, 1, 2],
             [6, 7, 2, 1, 9, 0, 3, 4, 9],
             [1, 0, 0, 3, 4, 2, 5, 6, 0],
             [8, 5, 9, 7, 6, 1, 0, 2, 0],
             [4, 2, 6, 8, 5, 3, 7, 9, 1],
             [7, 1, 3, 9, 2, 4, 8, 5, 6],
             [9, 0, 1, 5, 3, 7, 2, 1, 4],
             [2, 8, 7, 4, 1, 9, 6, 3, 5],
             [3, 0, 0, 4, 8, 1, 1, 7, 9]])// "Try again!"
