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
    func preorder(_ root: Node?) -> [Int] {
        guard let root = root else { return [] }
        guard !root.children.isEmpty else { return [root.val] }
        
        var queue:[Node] = [root]
        var returnRes:[Int] = []
        while !queue.isEmpty {
            let me = queue.removeFirst()
            
            for i in me.children.reversed() {
                queue.insert(i, at: 0)
            }
            
            returnRes.append(me.val)
            
        }
        
        
        return returnRes
    }
}
let tree = Node(1)
let anotherTree = Node(3)
anotherTree.children = [Node(5), Node(6)]
tree.children = [anotherTree, Node(2), Node(4)]
print(Solution().preorder(tree))
