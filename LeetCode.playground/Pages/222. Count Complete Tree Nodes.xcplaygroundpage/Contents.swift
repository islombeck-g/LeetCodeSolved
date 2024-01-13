import Foundation

//solved 13.01.2024
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

//class Solution {
//    func countNodes(_ root: TreeNode?) -> Int {
//        guard let tree = root else { return 0 }
//        
//        var queue:[TreeNode] = [tree]
//        var count = 0
//        while !queue.isEmpty {
//            let value = queue.removeFirst()
//            count += 1
//            if value.left != nil { queue.append(value.left!) }
//            if value.right != nil { queue.append(value.right!) }
//        }
//
//        return count
//    }
//}

class Solution {
    func countNodes(_ root: TreeNode?) -> Int {
        guard root != nil else { return 0 }
        
        return 1 + countNodes(root?.left) + countNodes(root?.right)
    }
}

let tree = TreeNode(1, TreeNode(2, TreeNode(4), TreeNode(5)), TreeNode(3, TreeNode(6), nil))

print(Solution().countNodes(tree))
