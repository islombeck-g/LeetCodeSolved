import Foundation

//solved 15.02.2024
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
    func help(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        return root.val + help(root.left) + help(root.right)
    }
    func findTilt(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        var queue:[TreeNode] = [root]
        var returnResult:Int = 0
        
        while !queue.isEmpty {
            let me = queue.removeFirst()
            
            if let left = me.left { queue.append(left) }
            if let right = me.right { queue.append(right) }
            
            returnResult +=  abs((help(me.left) - help(me.right)))
        }
        return returnResult
    }
}

let tree:TreeNode = TreeNode(4, TreeNode(2, TreeNode(3), TreeNode(5)), TreeNode(9, nil, TreeNode(7)))


func printTree(root: TreeNode?) {
    guard let root = root else { return }
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
printTree(root: tree)
print(Solution().findTilt(tree))
