def wordSearch(board, word):
        def dfs(curBoard, i, r, c):
            if i == n: return True 
            if not 0 <= r < R or not 0 <= c < C or board[r][c] != word[i]: 
                return False 
            curLetter = curBoard[r][c]
            curBoard[r][c] = " "
            res = dfs(curBoard, i + 1, r + 1, c) or dfs(curBoard, i + 1, r, c + 1) \
                or dfs(curBoard, i + 1, r - 1, c) or dfs(curBoard, i + 1, r, c - 1)
            curBoard[r][c] = curLetter
            return res 
        
        if not board or not word: return False 
        n, R, C = len(word), len(board), len(board[0]) 
        for r in range(R):
            for c in range(C):
                if word[0] == board[r][c]:
                    if dfs(board, 0, r, c):
                        return True
        return False    

assert wordSearch([ ['A','B','C','E'], ['S','F','C','S'], ['A','D','E','E'] ], "ABCCED") == True
assert wordSearch([ ['A','B','C','E'], ['S','F','C','S'], ['A','D','E','E'] ], "SEE") == True 
assert wordSearch([ ['A','B','C','E'], ['S','F','C','S'], ['A','D','E','E'] ], "ABCB") == False
