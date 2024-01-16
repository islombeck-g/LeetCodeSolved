import Foundation

//solved at 16.01.2024
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
    func isUnivalTree(_ root: TreeNode?) -> Bool {
        guard let root = root else { return true }
        var queue:[TreeNode] = [root]
        
        while !queue.isEmpty {
            var me = queue.removeLast()
            if me.val != root.val { return false }
            if let l = me.left { queue.append(l) }
            if let r = me.right { queue.append(r) }
        }
        
        return true
    }
}

let tree = TreeNode(1, TreeNode(1, TreeNode(1), TreeNode(1)), TreeNode(1, nil, TreeNode(1)))
let tree1 = TreeNode(2, TreeNode(2,TreeNode(5),TreeNode(2)), TreeNode(2))

print(Solution().isUnivalTree(tree1))
