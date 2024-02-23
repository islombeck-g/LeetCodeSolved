import Foundation

//time limit(easy(((), i dont know how optimize it, but all is good
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        
        var dictionary: Dictionary<Int, Set<Int>> = [:]
        var returnValue = 0
        
        for i in 0..<prices.count {
            
            for ii in i+1..<prices.count {
                if prices[i] < prices[ii] { dictionary[prices[i], default: []].insert(prices[ii]) }
            }
        }
        
        for (key, value) in dictionary {
            
            let me = value.max()
            let me1 = me! - key
            
            if me1 > returnValue { returnValue = me1 }
            
        }
        return returnValue
    }
}

let prices = [7,1,5,3,6,4]

print(Solution().maxProfit(prices))
