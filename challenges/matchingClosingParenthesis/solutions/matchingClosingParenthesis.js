// Find the matching closing parethesis in a string

// Stack in JavaScript
// LIFO (last in, first out)
class Stack {

  constructor(size = 0, data = {}){
    this.size = size;
    this.data = data;
  }

  push(data){
    let size = ++this.size;
    this.data[size] = data;
  }

  pop(){
    let size = this.size, dataDeleted;

    if(size){
      dataDeleted = this.data[size];

      delete this.data[size];
      this.size--;

      return dataDeleted;
    }
  }
}

const closingParenthesisIndex = (str, open_parenthesis_position) => {

  if(str.length > 0) {

    let n_stack = new Stack();

    for(let i = open_parenthesis_position; i < str.length; i++){
      if(str[i] == "(" && i != open_parenthesis_position){
        n_stack.push(i);
      }else if(str[i] == ")" && n_stack.size > 0){
        n_stack.pop();
      }else if(str[i] == ")" && n_stack.size <= 0){
        return i;
      }

    }
  }

  return -1;

}

let str = "Lorem ipsum (dolor sit amet, (consectetur adipiscing) elit, (sed do (eiusmod tempor incididunt) ut labore) et dolore magna) aliqua.";
let position = 12; // Position of the open parethesis

// Find the position of the matching closing parethesis
// For example, for the open parethesis in position 12, the position of the corresponding closing parethesis is 122 or the one open parenthesis at 29, the closing one is at 52
let closing_parenthesis = closingParenthesisIndex(str, position);

console.log(closing_parenthesis);
