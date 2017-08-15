def maxConsecutiveOnes(arr):
    cnt = 0
    ans = 0
    for num in arr:
        if num == 1:
            cnt += 1
            ans = max(ans, cnt)
        else:
            cnt = 0
    return ans

if __name__ == "__main__":
    print(maxConsecutiveOnes([5,101,14,1,1,1,13,1,1,45]))
