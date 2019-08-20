def isTreeSymmetric(root):
    if not root: return True 

    def sym(left, right):
        if not left and not right: 
            return True 
        if not left or not right: 
            return False 
        return left.val == right.val and sym(left.left, right.right) and sym(left.right, right.left)

    return sym(root.left, root.right)
