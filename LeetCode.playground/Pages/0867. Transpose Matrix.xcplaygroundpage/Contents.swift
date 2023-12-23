import Foundation
//submitted 23.12.2023
class Solution {
    func transpose(_ matrix: [[Int]]) -> [[Int]] {
       
        var res:[[Int]] = []
        
        for i in 0..<matrix[0].count {
            var semires:[Int] = []
            for j in 0..<matrix.count {
                semires.append(matrix[j][i])
            }
            res.append(semires)
        }
        return res
    }
}
