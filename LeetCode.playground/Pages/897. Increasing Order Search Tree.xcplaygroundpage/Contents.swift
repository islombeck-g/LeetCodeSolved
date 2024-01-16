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
    func increasingBST(_ root: TreeNode?) -> TreeNode? {
        guard var root = root else { return nil }
        var returnResult:[Int] = []
        var queue:[TreeNode] = [root]
        
        while !queue.isEmpty {
            var me = queue.removeFirst()
            
            if let l = me.left {queue.append(l)}
            if let r = me.right {queue.append(r)}
            returnResult.append(me.val)
            
        }
            print(returnResult)
        returnResult = returnResult.sorted()
        print(returnResult)
        var tree = TreeNode()
        let treeR = tree
        for i in returnResult {
            tree.right = TreeNode(i)
            tree = tree.right
        }
        return treeR.right!
    }
    
}
let tree = TreeNode(5, TreeNode(3, TreeNode(2, TreeNode(1), nil), TreeNode(4)), TreeNode(6, nil, TreeNode(8, TreeNode(7),TreeNode(9))))

Solution().increasingBST(tree)
