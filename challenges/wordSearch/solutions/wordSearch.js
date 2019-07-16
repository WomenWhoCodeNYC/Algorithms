// Please check link for explanation of code below 
// https://leetcode.com/problems/word-search/discuss/121396/Javascript-solution

// Additional solutions
// Backtracking Approach - https://leetcode.com/problems/word-search/discuss/219666/Javascript-Using-Backtracking
// Clean Solution - https://leetcode.com/problems/word-search/discuss/133078/Clean-JavaScript-solution
// Well Commented - https://leetcode.com/problems/word-search/discuss/27767/Javascript-solution-well-commented!

var exist = function(board, word) {
    // Initial validation check
    if (board.length === 0) return false;
    if (word.length === 0) return false;
    
    // Flag to track if it was found
    let found = false;
    // Set to track the cells already visited
    let visited = new Set();
        
    /* Recursive method to check the entries */
    function find(prefix, row, col) {
        const char = board[row][col];
        // If it already found quit to prevent unnecessary work
        if (found) return;
        // If the current sequence doesn't match with the beginning of the word quit
        if (prefix !== word.substr(0, prefix.length)) return;
        // If this cell has already being visited quit
        if (visited.has(`${row}-${col}`)) return;
        
        // Adds to the current sequence and checks if it is the word we are looking for
        const current = prefix + char;
        if (current === word) {
            found = true;
            return;
        }
        
        // Flag the current cell so its not used twice
        visited.add(`${row}-${col}`);
        
        // Searches in all the directions
        const existsUp = (row > 0) && find(current, row - 1, col);
        const existsDown = (row < board.length - 1) && find(current, row + 1, col);
        const existsLeft = (col > 0) && find(current, row, col - 1);
        const existsRight = (col < board[0].length - 1) && find(current, row, col + 1);
        
        // Unflag the current cell so its not marked in the next interation
        visited.delete(`${row}-${col}`);        
    }

    // Swipe the matrix to look for the first letter of the word
    const firstLetter = word.charAt(0);
    for (let row = 0; row < board.length; row += 1) {
        for (let col = 0; col < board[0].length; col += 1) {
            const letter = board[row][col];
            // In case it has found calls the recursive method to look for the remaining
            if (letter === firstLetter) find('', row, col);
            // In case it has found abort and return true
            if (found) return true;
        }
    }
    
    // In case it has not found
    return false;
};