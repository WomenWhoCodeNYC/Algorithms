function LinkedList() {
	this.head = null;
	this.tail = null;
}

function Node(data) {
	this.data = data;
	this.next = null;
	this.previous = null;
}

LinkedList.prototype.addToHead = function(el) {
	if (el) {
	    var newNode = new Node(el);
		if(this.head === null){
			this.tail = this.head = newNode;
		}else{
			newNode.previous = null;
			this.head.previous = newNode;
			newNode.next = this.head;
			this.head = newNode;
		}
	} else {
		return undefined;
	}
}

function nthToLast(sll, k){
    //handle, 0 or negative value of k
    if (k <= 0)
        return null;

    // Create two pointers both point to head
    var pointer1 = sll.head;
    var pointer2 = sll.head;

    // Move pointer2 forward k nodes into the list.
    for (var i = 0; i < k - 1; i ++) {
        if (pointer2 === null) return null;
        pointer2 = pointer2.next;
    }

    if (pointer2 === null) return null;

    // Move pointer1 and pointer 2 at the same speed.
    // Once the pointer2 reaches the end,
    // the pointer1 will be the kth last element
    while (pointer2.next !== null) {
        pointer1 = pointer1.next;
        pointer2 = pointer2.next;
    }

   return pointer1;
}

//create the LinkedList
var sll = new LinkedList();
sll.addToHead(5);
sll.addToHead(4);
sll.addToHead(3);
sll.addToHead(2);
sll.addToHead(1);

console.log('sll ', sll);
console.log(nthToLast(sll, 1)); //Object {data: 5, next: null}
console.log(nthToLast(sll, 2)); //Object {data: 4, next: Object}
console.log(nthToLast(sll, 3)); //Object {data: 3, next: Object}

//submitted by lei-clearsky: https://github.com/lei-clearsky
