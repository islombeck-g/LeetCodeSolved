import Foundation

//solved at 16.01.2024
public class Node {
    public var val: Int
    public var children: [Node]
    public init(_ val: Int) {
        self.val = val
        self.children = []
    }
}


class Solution {
    func maxDepth(_ root: Node?) -> Int {
        guard let root = root else { return 0 }
        guard !root.children.isEmpty else { return 1 }
        
        var q:[Node] = [root]
        var q1:[Node] = []
        var depth = 0
        while !q.isEmpty || !q1.isEmpty {
            let me = q.removeLast()
            if !me.children.isEmpty {
                for i in me.children {
                    q1.append(i)
                }
            }
            if q.isEmpty {
             depth += 1
                q = q1
                q1 = []
            }
        }
        return depth
    }
}

let tree = Node(1)
let anotherTree = Node(3)
anotherTree.children = [Node(5), Node(6)]
tree.children = [anotherTree, Node(2), Node(4)]
print(Solution().maxDepth(tree))
