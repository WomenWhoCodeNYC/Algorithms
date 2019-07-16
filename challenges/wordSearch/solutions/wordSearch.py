# Please check link for explanation of code below 
# https://leetcode.com/problems/word-search/discuss/27660/Python-dfs-solution-with-comments.
 
# Additional solutions 
# Another DFS - https://leetcode.com/problems/word-search/discuss/27820/Python-DFS-solution
# Easy to understand - https://leetcode.com/problems/word-search/discuss/122236/Easy-Python-Solution
# Backtracking - https://leetcode.com/problems/word-search/discuss/27911/Accepted-Python-backtracking-solution

def exist(self, board, word):
    if not board:
        return False
    for i in xrange(len(board)):
        for j in xrange(len(board[0])):
            if self.dfs(board, i, j, word):
                return True
    return False

# check whether can find word, start at (i,j) position    
def dfs(self, board, i, j, word):
    if len(word) == 0: # all the characters are checked
        return True
    if i<0 or i>=len(board) or j<0 or j>=len(board[0]) or word[0]!=board[i][j]:
        return False
    tmp = board[i][j]  # first character is found, check the remaining part
    board[i][j] = "#"  # avoid visit agian 
    # check whether can find "word" along one direction
    res = self.dfs(board, i+1, j, word[1:]) or self.dfs(board, i-1, j, word[1:]) \
    or self.dfs(board, i, j+1, word[1:]) or self.dfs(board, i, j-1, word[1:])
    board[i][j] = tmp
    return res
