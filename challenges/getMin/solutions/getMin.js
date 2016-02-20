// Javascript Solution
// MinStack.prototype = new Stack(); //inheritance
// MinStack.prototype.constructor = MinStack;
// function MinStack() {
//     this.minStack = new Stack();
// }

MinStack.prototype.push = function(val) {
    var newNode = new Node(val);
    if (!this.top) {
        this.top = newNode;
        this.minStack.push(val);
        return;
    }
    newNode.next = this.top;
    this.top = newNode;
    if (this.minStack.peek() > val)
        this.minStack.push(val);
}

MinStack.prototype.pop = function() {
    if (!this.top) return null;
    var popped = this.top.val;
    if (this.minStack.peek() === popped)
        this.minStack.pop();
    this.top = this.top.next;
    return popped;
}

MinStack.prototype.min = function() {
    return this.minStack.peek();
}

function Stack() {
    this.top = null;
}

Stack.prototype.push = function(val) {
    var newNode = new Node(val);
    if (!this.top) {
        this.top = newNode;
        return;
    }
    newNode.next = this.top;
    this.top = newNode;
};

Stack.prototype.pop = function() {
    if (!this.top) return null;
    var popped = this.top.val;
    this.top = this.top.next;
    return popped;
};

Stack.prototype.peek = function() {
    if (!this.top) return null;
    return this.top.val;
};

function Node(val,next) {
    this.val = val;
    this.next = next;
}

```
