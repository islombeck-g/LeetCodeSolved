import Foundation

//572. Subtree of Another Tree
//work in xcode, but not in leetcode(
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
    func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
        guard let root = root else { return false }
        guard let subRoot = subRoot else { return true }
        
        var queue:[TreeNode] = [root]
        
        while !queue.isEmpty {
            let me = queue.removeFirst()
            
            if me.val == subRoot.val {
                var q = [me]
                var q1 = [subRoot]
                while !q.isEmpty || !q1.isEmpty {
                    let m = q.removeFirst()
                    let m1 = q1.removeFirst()
                    if m.val != m1.val { return false }
                    if let l = m.left { q.append(l) }
                    if let r = m.right { q.append(r) }
                    if let l1 = m1.left { q1.append(l1) }
                    if let r1 = m1.right { q1.append(r1) }
                }
                if q1.isEmpty { return true }
            }
            if let l = me.left { queue.append(l) }
            if let r = me.right { queue.append(r) }
        }
        
        return false
    }
  
}

let root = TreeNode(3, TreeNode(4, TreeNode(1), TreeNode(2)), TreeNode(0))
let subRoot = TreeNode(4, TreeNode(1), TreeNode(2))
print(Solution().isSubtree(root, subRoot))


//
//import Foundation
//
//
//public class TreeNode {
//    public var val: Int
//    public var left: TreeNode?
//    public var right: TreeNode?
//    public init() { self.val = 0; self.left = nil; self.right = nil; }
//    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
//    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
//        self.val = val
//        self.left = left
//        self.right = right
//    }
//}
//
//class Solution {
//    func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
//        guard let root = root else { return false }
//        guard let subRoot = subRoot else { return true }
//        
//        var queue:[TreeNode] = [root]
//        
//        while !queue.isEmpty {
//            let me = queue.removeFirst()
//            
//            if me.val == subRoot.val {
//                if help(me, subRoot) { return true }
//            }
//            if let l = me.left { queue.append(l) }
//            if let r = me.right { queue.append(r) }
//        }
//        
//        return false
//    }
//    func help(_ first:TreeNode?, _ second:TreeNode?) -> Bool {
//        guard  first != nil && second != nil else { return false }
//        var q = [first]
//        var q1 = [second]
//        
//        while !q.isEmpty || !q1.isEmpty {
//            let m = q.removeFirst()
//            let m1 = q1.removeFirst()
//            if m!.val != m1!.val { return false }
//            if let l = m!.left { q.append(l) }
//            if let r = m!.right { q.append(r) }
//            if let l1 = m1!.left { q1.append(l1) }
//            if let r1 = m1!.right { q1.append(r1) }
//        }
//        if !q1.isEmpty { return false }
//        return true
//    }
//}
//
//let root = TreeNode(3, TreeNode(4, TreeNode(1), TreeNode(2)), TreeNode(5))
//let subRoot = TreeNode(4, TreeNode(1), TreeNode(2))
//print(Solution().isSubtree(root, subRoot))
//
