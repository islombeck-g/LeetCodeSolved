//submitted 20.12.2023

import Foundation

class Solution {
    
    func imageSmoother(_ img: [[Int]]) -> [[Int]] {
        
        var rows = img.count
        
        var cols = img[0].count
        
        var res = Array(repeating: Array(repeating: 0, count: cols), count: rows )
        for i in 0..<rows {
            for j in 0..<cols {
                var semiRes = 0
                var count = 0
                if i-1 > -1 {
                    if j-1 > -1 {
                        semiRes += img[i-1][j-1]
                        count += 1
                    }
                    semiRes += img[i-1][j]
                    count += 1
                    
                    if j+1 < cols {
                        semiRes += img[i-1][j+1]
                        count += 1
                    }
                }
                
                if j - 1 > -1 {
                    semiRes += img[i][j-1]
                    count += 1
                }
                semiRes += img[i][j]
                count += 1
                if j + 1 < cols {
                    semiRes += img[i][j+1]
                    count += 1
                }
                
                if i + 1 < rows {
                    if j - 1 > -1 {
                        semiRes += img[i+1][j-1]
                        count += 1
                    }
                    semiRes += img[i+1][j]
                    count += 1
                    if j + 1 < cols {
                        semiRes += img[i+1][j+1]
                        count += 1
                    }
                }
                res[i][j] = semiRes/count
            }
        }
        return res
    }
}
