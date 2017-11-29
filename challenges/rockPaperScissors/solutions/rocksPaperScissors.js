function RPS(play1, play2) {
  //nest three options 
  if (play1===play2) {
    return "tie";
  }
  
  if (play1==="rock") {
    if (play2==="paper") {
      return "paper";
    } else if (play2==="scissors") {
      return "rock";
    }
  }
  
  if (play1==="paper") {
    if (play2==="rock") {
      return "paper";
    } else if (play2==="scissors") {
      return "scissors";
    }
  }
  
  if (play1==="scissors") {
    if (play2==="rock") {
      return "rock";
      
    }else if (play2==="paper") {
      return "scissors";
    }
  }
}

RPS("scissors", "scissors")
