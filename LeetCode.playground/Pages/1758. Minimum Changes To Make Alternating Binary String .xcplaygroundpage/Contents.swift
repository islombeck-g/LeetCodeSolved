import Foundation
//solved 24.12.23
class Solution {
    func minOperations(_ s: String) -> Int {
        
        var me0 = Array(s)
        var me1 = me0
        var count0 = 0
        var count1 = 0
        if me0.count % 2 == 0 {
            for i in stride(from: 0, to: me0.count, by: 2) {
                if me0[i] != "1" { me0[i] = "1"; count0 += 1 }
                if me0[i+1] != "0" { me0[i+1] = "0"; count0 += 1 }
                if me1[i] != "0"{ me1[i] = "0"; count1 += 1 }
                if me1[i+1] != "1" { me1[i+1] = "1"; count1 += 1 }
            }
        } else {
            for i in stride(from: 0, to: me0.count-1, by: 2) {
                if me0[i] != "1" { me0[i] = "1"; count0 += 1 }
                if me0[i+1] != "0" { me0[i+1] = "0"; count0 += 1 }
                if me1[i] != "0"{ me1[i] = "0"; count1 += 1 }
                if me1[i+1] != "1" { me1[i+1] = "1"; count1 += 1 }
            }
            if me0[me0.count-1] != "1" {
                me0[me0.count-1] = "1"
                count0 += 1
            }
            if me1[me1.count-1] != "0" {
                me1[me1.count-1] = "0"
                count1 += 1
            }
        }
        return min(count0, count1)
    }
}

