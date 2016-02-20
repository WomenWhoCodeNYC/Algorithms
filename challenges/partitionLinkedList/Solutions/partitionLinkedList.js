function LinkedList() {
	this.head = null;
	this.tail = null;
}

function Node(data) {
	this.data = data;
	this.next = null;
}

LinkedList.prototype.addToHead = function(el) {
	if (el) {
	    var newNode = new Node(el);
		if(this.head === null){
			this.tail = this.head = newNode;
		}else{
			newNode.next = this.head;
			this.head = newNode;
		}
	} else {
		return undefined;
	}
}

function partition(node, x) {
    // create two linkedlists - small and large
    // create four pointers point to two linkedlists' heads and tails
    var smallHead = null;
    var smallTail = null;
    var largeHead = null;
    var largeTail = null;
    
    // traverse the linkedlist from the head node
    // add the node to small linkedlist if the node's data is less than x
    // add the node to large linkedlist if the node's data is larger than or equal to x
    while(node !== null) {
        var next = node.next;
        
        if (node.data < x) {
            if (smallHead === null) {
                smallHead = smallTail = node;
            } else {
                smallTail.next = node;
                smallTail = node;
                smallTail.next = null;
            }
        } else {
            if (largeHead === null) {
                largeHead = largeTail = node;
            } else {
                largeTail.next = node;
                largeTail = node;
                largeTail.next = null;
            }
        }
        node = next;
    }
    
    // merge two linkedlist
    if (smallHead) {
        smallTail.next = largeHead;
        return smallHead;   
    } else {
        return largeHead;
    }
}

// Test
var sll = new LinkedList();
sll.addToHead(3);
sll.addToHead(17);
sll.addToHead(2);
sll.addToHead(8);
sll.addToHead(35);
console.log('sll ', sll); // 35, 8, 2, 17, 3 
console.log('after partition: ', partition(sll.head, 9)); // 8, 2, 3, 35, 17
console.log('after partition: ', partition(sll.head, 1)); // 35, 8, 2, 17, 3
console.log('after partition: ', partition(sll.head, 36)); // 35, 8, 2, 17, 3