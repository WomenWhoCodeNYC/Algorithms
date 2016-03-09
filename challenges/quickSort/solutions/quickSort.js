// ES6 solution adapted from Rosetta Code
// http://rosettacode.org/wiki/Sorting_algorithms/Quicksort#JavaScript

Array.prototype.quick_sort = function () {
    if (this.length < 2) { return this; }

    var pivot = this[Math.floor(Math.random() * this.length)];
    
    return this.filter(x => x <  pivot)
               .quick_sort()
               .concat(this.filter(x => x == pivot))
               .concat(this.filter(x => x >  pivot).quick_sort());
};
