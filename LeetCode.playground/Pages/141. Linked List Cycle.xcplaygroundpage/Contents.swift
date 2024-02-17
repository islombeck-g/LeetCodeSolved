import Foundation

//solved at 17.02.2024
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        
        var first = head
        var second = head?.next
        
        while first != nil || second != nil {
            guard first !== second else { return true }
            
            first = first?.next
            second = second?.next?.next
        }
        return false
    }
}
