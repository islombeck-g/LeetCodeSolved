import Foundation

//submitted 12.01.2024
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

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
    func sortedListToBST(_ head: ListNode?) -> TreeNode? {

        guard var newHead = head else { return nil }
        var nums:[Int] = []

        while true {
            nums.append(newHead.val)
            if newHead.next == nil { break } else { newHead = newHead.next!}
        }
        
        return newFunc(nums: nums, left: 0, right: nums.count - 1)
    }
    private func newFunc(nums:[Int], left:Int, right:Int) -> TreeNode? {
        if left > right { return nil }
        let middle = (left + right) / 2
        let tree = TreeNode(nums[middle])
        tree.left = newFunc(nums: nums, left: left, right: middle - 1)
        tree.right = newFunc(nums: nums, left: middle + 1, right: right)
        return tree
    }
}

let list:ListNode = ListNode(-10, ListNode(-3, ListNode(0, ListNode(5, ListNode(9)))))


func printTree(_ tree: TreeNode?) {
    guard let tree = tree else { return }
    var queue:[TreeNode] = [tree]
    
    while true {
        if queue.isEmpty { break }
        let me = queue.removeFirst()
        if me.left != nil { queue.append(me.left!) }
        if me.right != nil { queue.append(me.right!) }
        print(me.val)
    }
}

printTree(Solution().sortedListToBST(list))
