//submitted 20.12.2023

import Foundation

class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        guard numRows > 1 else { return [[1]]}
        
        if numRows == 2 {
            return [[1], [1, 1]]
        }
        var res = [[1], [1, 1]]
        
        for i in 1..<numRows-1 {
            var semiRes:[Int] = [1]
            for j in 0..<res[i].count {
                if j + 1 < res[i].count {
                    semiRes.append(res[i][j] + res[i][j+1])
                }
            }
            semiRes.append(1)
            res.append(semiRes)
        }
        print(res)
        return res
    }
}
