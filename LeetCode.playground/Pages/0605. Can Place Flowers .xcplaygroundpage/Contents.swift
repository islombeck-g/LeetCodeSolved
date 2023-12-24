import Foundation
// submitted 24.12.2023

class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        guard n > 0 else {return true}
        if flowerbed.count == 0 && flowerbed[0] == 0 && n == 1 {return true}
        guard flowerbed.count > 1 else {return false}
        var number = n
        var flow = flowerbed
        
        if flow[0] == 0 && flow[1] == 0 {
            flow[0] = 1
            number -= 1
        }
        
        for i in 1..<flowerbed.count-1 {
            
            if flow[i-1] == 0 && flow[i] == 0 && flow[i+1] == 0 {
                number -= 1
                flow[i] = 1
            }
            
        }
        if flow[flowerbed.count-2] == 0 && flow[flowerbed.count-1] == 0 {
            number -= 1
            
        }
        return number <= 0 ? true: false
    }
}
