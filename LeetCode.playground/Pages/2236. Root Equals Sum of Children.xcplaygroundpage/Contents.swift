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
    func checkTree(_ root: TreeNode?) -> Bool {
        guard let root = root else { return false }
        var queue:[TreeNode] = [root]
        
        while !queue.isEmpty {
            let me = queue.removeLast()
            var l:TreeNode?
            var r:TreeNode?
            if let l1 = me.left {queue.append(l1); l = l1}
            if let r1 = me.right {queue.append(r1); r = r1}
            print(l?.val)
            print(r?.val)
            print((l?.val ?? 0) + (r?.val ?? 0))
            if l != nil || r != nil {if (l?.val ?? 0) + (r?.val ?? 0) != me.val { return false}}
        }
        return true
    }
}


let tree = TreeNode(10, TreeNode(4), TreeNode(6))

print(Solution().checkTree(tree))
