var a = [5, 1, 4, 2, 8];
function bubblesort (a) {
	let swap = true;
	
	while(swap) {
		swap = false;
		for ( let i = 0; i < a.length;  i++) {
			if ( a[i] > a[i+1]) {
				[a[i], a[i+1]] = [a[i+1], a[i]];
				swap = true;
				console.log(swap);
				console.log(a);
			}
		}	
	}
	
	return a
}

console.log(a)

bubblesort(a)