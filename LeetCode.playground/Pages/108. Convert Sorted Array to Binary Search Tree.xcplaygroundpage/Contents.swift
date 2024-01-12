import Foundation
//submitted at 12.01.2024
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
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        guard !nums.isEmpty else { return nil }
        
        
        return newAdd(nums: nums, start: 0, end: nums.count - 1)
    }
    
    private func newAdd(nums:[Int], start:Int, end:Int) -> TreeNode? {
        
        if start > end { return nil }
        let middle = (start + end) / 2
        let tree = TreeNode(nums[middle])
        tree.left = newAdd(nums: nums, start: start, end: middle - 1)
        tree.right = newAdd(nums: nums, start: middle + 1, end: end)
        
        return tree
    }
    
    func add(_ tree:TreeNode, val:Int) {
        if val > tree.val {
            if tree.right == nil { tree.right = TreeNode(val) }
            else { add(tree.right!, val: val) } }
        else {
            if tree.left == nil { tree.left = TreeNode(val) }
            else { add(tree.left!, val: val) }
        }
        
    }
}

let nums = [-10,-3,0,5,9]

func printTree(_ tree: TreeNode?) {
    guard let tree = tree else { return }
    print(tree.val)
    if tree.left != nil { printTree(tree.left)}
    if tree.right != nil { printTree(tree.right)}
}
printTree(Solution().sortedArrayToBST(nums))
//print(nums[nums.count/2])

