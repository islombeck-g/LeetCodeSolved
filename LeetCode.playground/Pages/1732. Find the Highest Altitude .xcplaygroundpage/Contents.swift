import Foundation
//submitted 25.12.2023

class Solution {
    func largestAltitude(_ gain: [Int]) -> Int {
        
        var me = 0
        var array: [Int] = [0]
        
        for i in 0..<gain.count {
            me += gain[i]
            array.append(me)
        }
        return array.max()!
    }
}
