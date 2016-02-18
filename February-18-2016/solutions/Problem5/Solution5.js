/*
Assumes a node looks something like this:
var nodeFoo = {
    next: function that returns nodeBar
}

*/

function hasloop(startNode) {
    //create two pointers, a tortoise and a hare
    var tortoise = startNode.next();
    var hare = tortoise.next();
    //while there is somewhere to travel to along your linked list
    while(hare !== null) {
        //check if they are equal
        if(hare === tortoise) {
            //hare and tortoise have met: loop exists
            return true;
        } else {
            //travel to the each time
            var hare = hare.next().next();
            var tortoise = tortoise.next();
        }
    }
    //reached end of list no loop
    return false;
}
