function BST(){
	this.root = null;
}
BST.prototype.makeNode = function(value) {
    var node = {};
    node.value = value;
    node.left = null;
    node.right = null;
    return node;
};

BST.prototype.add = function(value) {
    var currentNode = this.makeNode(value);
    if (!this.root) {
        this.root = currentNode;
    } else {
        this.insert(currentNode);
    }
    return this;
};

BST.prototype.insert = function(currentNode) {
    var value = currentNode.value;
    var traverse = function(node) {
        if (value > node.value) {
            if (!node.right) {
                node.right = currentNode;
                return;
            } else traverse(node.right);
        } else if (value < node.value) {
            if (!node.left) {
                node.left = currentNode;
                return;
            } else traverse(node.left);
        }
    };
    traverse(this.root);
};
BST.prototype.findslargest = function(){
	var traverse = function(node){
  	if(!node.right.right){
    	return node.value;
    }
    	return traverse(node.right);
  }
  return traverse(this.root);
}
var bst = new BST();
bst.add(50);
bst.add(25);
bst.add(32);
bst.add(65);
bst.add(75);
bst.add(80);
console.log("bst 2nd largest: ",bst.findslargest());