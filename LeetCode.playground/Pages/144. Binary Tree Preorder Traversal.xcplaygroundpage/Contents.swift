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
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else {return []}
        var returnResult:[Int] = []
        
        var queue:[TreeNode] = [root]
        
        while !queue.isEmpty {
            let me = queue.removeLast()
            returnResult.append(me.val)
            if me.right != nil { queue.append(me.right!)}
            if me.left != nil { queue.append(me.left!) }
            
        }
        return returnResult
    }
}


let tree = TreeNode(1,
                    TreeNode(2, 
                             TreeNode(4,
                                      TreeNode(7),nil), nil),
                    TreeNode(3, TreeNode(5, TreeNode(8), TreeNode(9)), TreeNode(6, nil, TreeNode(10))))

let me = Solution().preorderTraversal(tree)
let res = [1, 2, 4, 7, 3, 5, 8, 9, 6, 10]
                    
print(me)
print(res)
if me == res {print(true)} else {print(false)}
