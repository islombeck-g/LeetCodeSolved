import Foundation

//solve 15.01.2024
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func mergeTrees(_ root1: TreeNode?, _ root2: TreeNode?) -> TreeNode? {
       
        guard let root1 = root1 else { return root2 }
        guard let root2 = root2 else { return root1 }
        
        root1.val += root2.val
        root1.left = mergeTrees(root1.left, root2.left)
        root1.right = mergeTrees(root1.right, root2.right)
        
        return root1
    }
}

//let root = TreeNode(1, TreeNode(2, TreeNode(4), TreeNode(5)), TreeNode(3))
//let root1 = TreeNode(5, TreeNode(3, TreeNode(2), nil), TreeNode(6, TreeNode(1), TreeNode(4)))

let root = TreeNode(1, TreeNode(2, TreeNode(3), nil), nil)
let root1 = TreeNode(1, nil, TreeNode(2, nil, TreeNode(3)))
let res = Solution().mergeTrees(root, root1)

func printTree(_ tree: TreeNode) {
    var q1 = [tree]
    var res:[Int?] = []
    while !q1.isEmpty{
        
        var me1 = q1.removeFirst()
        res.append(me1.val)
        if me1.left != nil {q1.append(me1.left!)} else {res.append(nil)}
        if me1.right != nil {q1.append(me1.right!)} else {res.append(nil)}
        
    }
    print(res)
}
printTree(res!)
