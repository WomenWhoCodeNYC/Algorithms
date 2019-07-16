// Please check link for explanation of code below 
// https://leetcode.com/problems/word-search/discuss/27739/My-DFS-%2B-Backtracking-C%2B%2B-solution-(16ms)

// Additional solutions
// https://leetcode.com/problems/word-search/discuss/27675/My-19ms-accepted-C%2B%2B-code
// https://leetcode.com/problems/word-search/discuss/27835/C%2B%2B-dfs-solution.

// Typical dfs + backtracking question. It compare board[row][col] with word[start], if they match, change board[row][col] to '*' to mark it as visited. Then move to the next one (i.e. word[start+1]) and compare it to the current neighbors ( doing it by recursion) 
class Solution {
private:
    bool dfs(vector<vector<char>>& board, int row, int col, const string &word, int start, int M, int N, int sLen)
    {
        char curC;
        bool res = false;
        if( (curC = board[row][col]) != word[start]) return false;
        if(start==sLen-1) return true;
        board[row][col] = '*';
        if(row>0) res = dfs(board, row-1, col, word, start+1, M, N, sLen);
        if(!res && row < M-1) res = dfs(board, row+1, col, word, start+1, M, N, sLen);
        if(!res && col > 0)   res = dfs(board, row, col-1, word, start+1, M, N, sLen);
        if(!res && col < N-1) res = dfs(board,  row, col+1, word, start+1, M, N, sLen);
        board[row][col] = curC;
        return res;
    }
    
public:
    bool exist(vector<vector<char>>& board, string word) {
        int M,N,i,j,sLen = word.size();
        if( (M=board.size()) && (N=board[0].size()) && sLen)
        {
            for(i=0; i<M; ++i)
                for(j=0; j<N; ++j)
                    if(dfs(board, i, j, word, 0, M, N, sLen)) return true;
        }
        return false;
    }
};