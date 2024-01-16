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
    private var res:[Int] = []
    func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
        guard let root = root else { return 0 }
        
        help(root)
        guard !res.isEmpty else { return 0 }
        
        var returnRes = 0
        for i in res {
            if i >= low && i <= high { returnRes += i }
        }
        return returnRes
    }
    private func help(_ root: TreeNode) {
    
        if let l = root.left { help(l) }
        
        res.append(root.val)
        
        if let r = root.right { help(r) }
        
    }
}
let tree = TreeNode(10, TreeNode(5, TreeNode(3), TreeNode(7)), TreeNode(15, nil, TreeNode(18)))

print(Solution().rangeSumBST(tree, 7, 15))
