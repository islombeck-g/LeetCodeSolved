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
    func findSecondMinimumValue(_ root: TreeNode?) -> Int {
        guard let root = root else { return -1 }
        var set:Set<Int> = [root.val]
        var queue:[TreeNode] = [root]
        
        while !queue.isEmpty {
            let me = queue.removeLast()
            
            if let l = me.left { queue.append(l) }
            if let r = me.right { queue.append(r) }
            set.insert(me.val)
        }
        print(set)
        var arr = set.sorted(by:<)
        
        return arr.count > 0 ? arr[1] : -1
    }
}

let tree = TreeNode(2, TreeNode(2), TreeNode(5, TreeNode(5), TreeNode(7)))

print(Solution().findSecondMinimumValue(tree))
