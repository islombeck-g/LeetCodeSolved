import Foundation

//submitted 10.01.2024
class TreeNode {
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
    func searchBST(_ root: TreeNode?, _ val: Int) ->TreeNode? {
        guard root != nil else { return nil }
        if let newTree = find(root!, val){
            return newTree
        }
        return nil
    }
    func find(_ root:TreeNode, _ val:Int) ->TreeNode? {
        var newTree:TreeNode = root
        while true {
            if newTree.val == val { return newTree}
            if newTree.val > val {
                if newTree.left != nil { newTree = newTree.left! }
                else { return nil }
            } else {
                if newTree.right != nil { newTree = newTree.right! }
                else { return nil }
            }
        }
    }
}

let me = TreeNode(4, TreeNode(2, TreeNode(1), TreeNode(3)), TreeNode(7))

func printTreeNode(_ node:TreeNode) {
    print(node.val)
    if node.left != nil {printTreeNode(node.left!)}
 
    if node.right != nil {printTreeNode(node.right!)}
    
}
printTreeNode(me)
print("__________")

//Input: root = [4,2,7,1,3], val = 2
//Output: [2,1,3]
print(Solution().searchBST(me, 3))
print("__________")
