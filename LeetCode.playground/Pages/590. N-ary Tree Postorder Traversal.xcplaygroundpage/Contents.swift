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
    func postorder(_ root: Node?) -> [Int] {
        guard let root = root else { return [] }
        guard !root.children.isEmpty else { return [root.val]}
        var me = help(root)
        return me
    }
    func help(_ root: Node?) -> [Int] {
        guard let root = root else { return [] }
        guard !root.children.isEmpty else { return [root.val]}
        
        var returnResult:[Int] = [root.val]
        for i in root.children.reversed() {
            returnResult = postorder(i) + returnResult
        }
        return returnResult
    }
}

let tree = Node(1)
let anotherTree = Node(3)
anotherTree.children = [Node(5), Node(6)]
tree.children = [anotherTree, Node(2), Node(4)]
print(Solution().postorder(tree))
