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
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        let me = help(root)
        print(me)
        return me.reversed()
    }
    func help(_ root: TreeNode?) -> [Int] {
        guard let root = root else {return []}
        return [root.val] + help(root.right) + help(root.left)
    }
}
let tree = TreeNode(1,
                    TreeNode(2,
                             TreeNode(4,
                                      TreeNode(7),nil), nil),
                    TreeNode(3, TreeNode(5, TreeNode(8), TreeNode(9)), TreeNode(6, nil, TreeNode(10))))

let me = Solution().postorderTraversal(tree)
print(me)
