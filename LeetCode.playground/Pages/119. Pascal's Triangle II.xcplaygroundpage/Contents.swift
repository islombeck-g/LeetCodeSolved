import Foundation

//solved at 16.01.2024
class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        
        if rowIndex == 0 { return [1] }
        var returnRes:[Int] = [1, 1]
        if rowIndex == 1 { return returnRes }
        
        for _ in 2..<rowIndex+1 {
            
            var me = [1]
            
            for j in 1..<returnRes.count {
                me.append(returnRes[j-1] + returnRes[j])
            }
            
            me.append(1)
            returnRes = me
        }
        print(returnRes)
        return returnRes
    }
}

let rowIndex = 3
if Solution().getRow(rowIndex)  == [1, 3, 3, 1] {print(true)}
else {print(false)}
