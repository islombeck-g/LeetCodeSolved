import Foundation

//solved 15.01.2024
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
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else { return nil }
        
        var queue:[TreeNode] = [root]
        
        while !queue.isEmpty {
            let me = queue.removeFirst()
            
            let t = me.left
            me.left = me.right
            me.right = t
            
            if let left = me.left { queue.append(left) }
            if let right = me.right { queue.append(right) }
        }
        return root
    }
}


let tree = TreeNode(4, TreeNode(2, TreeNode(1), TreeNode(3)), TreeNode(7, TreeNode(6), TreeNode(9)))

func printTree(_ tree: TreeNode?) {
    guard let root = tree else { return }
    
    var queue:[TreeNode] = [root]
    var res:[Int] = []
    while !queue.isEmpty {
        let me = queue.removeFirst()
        res.append(me.val)
        if let left = me.left { queue.append(left) }
        if let right = me.right { queue.append(right) }
    }
    print(res)
}
printTree(tree)
let me = Solution().invertTree(tree)
printTree(me)
