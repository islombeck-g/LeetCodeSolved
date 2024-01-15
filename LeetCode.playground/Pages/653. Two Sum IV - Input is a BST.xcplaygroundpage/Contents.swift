import Foundation

//solved at 15.01.2024
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
    func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
        guard let root = root else { return false }
        
        var queue = [root]
        var resArray:[Int] = []
        while !queue.isEmpty {
            let me = queue.removeLast()
            resArray.append(me.val)
            if let l = me.left { queue.append(l) }
            if let r = me.right { queue.append(r) }
        }
        
        for i in 0..<resArray.count-1 {
            for j in 1..<resArray.count {
                if i == j { continue }
                if resArray[i] + resArray[j] == k { return true }
            }
        }
        return false
    }
}

let tree = TreeNode(5, TreeNode(3, TreeNode(2), TreeNode(4)), TreeNode(6, nil, TreeNode(7)))

print(Solution().findTarget(tree, 9))
