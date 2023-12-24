import Foundation
//submitted 24.12.2023

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var me = 0
        var arr: [Int] = []
        for i in 0..<nums.count {
            if nums[i] == 0 {
                arr.append(i)
            }
        }
        for i in arr.reversed() {
            nums.remove(at: i)
        }
        nums.append(contentsOf: repeatElement(0, count: arr.count))
    }
}
