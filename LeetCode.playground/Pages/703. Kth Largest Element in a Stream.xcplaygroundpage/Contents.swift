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
    func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
        
        let array = check(root1)
        let array1 = check(roo2)
        
        if array == array1 { return true }
        return false
    }
    
    func check(_ root:TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        var returnResult:[Int] = []
        var stack:[TreeNode] = [root]
        
        while !stack.isEmpty {
            let me = stack.removeLast()
            
            if let l = me.left {stack.append(l)}
            if let r = me.right {stack.append(r)}
            
            if me.left == nil && me.right == nil { returnResult.append(me.val) }
        }
        
        return returnResult
    }
}

let tree = TreeNode(3, TreeNode(5, TreeNode(6), TreeNode(2, TreeNode(7), TreeNode(4))), TreeNode(1, TreeNode(9), TreeNode(8)))


