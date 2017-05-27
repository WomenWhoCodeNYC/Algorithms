class Node{
  constructor(value, children = []){
    this.value = value;
    this.children = children;
  }
}

// Count vertices on node
const countVertices = (node) => {

  let counter = 1;

  node.children.forEach(function(item, index){
    counter += countVertices(item);
  });

  return counter;

}

const decomposeTree = (node) =>{

  // Array to save the edges to be deleted;
  let elements_to_delete = [];

  // Evaluate each children of the main node
  node.children.forEach(function(item, index){

    let counter = countVertices(item); // Get the total vertices on each child

    if(counter % 2 == 0){ // if the count is even, set the index of the edge to true
      elements_to_delete[index] = true;
    }else{
      elements_to_delete[index] = false;
    }

  });

  // Array to save each tree after decomposed
  let new_arr_of_trees = [];

  for(let i = 0; i < elements_to_delete.length; i++){
    if(elements_to_delete[i]){
      new_arr_of_trees[i] = node.children[i];
      delete node.children[i];
    }
  }


  new_arr_of_trees[new_arr_of_trees.length] = node;

  // To see the three different trees.
  // console.log(new_arr_of_trees);

  return new_arr_of_trees.length - 1;

}

//              1
//    2         3       6
//  7   5       4       8
//                    9   10

// Creating a Tree
let ten = new Node(10),
    nine = new Node(9),
    eight = new Node(8, [nine, ten]),
    six = new Node(6, [eight]),
    four = new Node(4),
    three = new Node(3, [four]),
    five = new Node(5),
    seven = new Node(7),
    two = new Node(2, [five, seven]),
    one = new Node(1, [two, three, six]);

console.log("Decomposed Tree: ", decomposeTree(one));
