import Foundation

//solved at 22.02.2024
class Solution {
    func findJudge(_ n: Int, _ trust: [[Int]]) -> Int {
        guard !trust.isEmpty else{
            if n == 1 { return 1 }
            return -1
        }
       
        var dictionary:Dictionary<Int, Set<Int>> = [:]
        var count = 0
        var num:Int?
        
        for i in trust { dictionary[i[0], default: []].insert(i[1]) }
        
        for number in 1..<n + 1 {
            if !dictionary.contains(where: { $0.key == number}) { num = number; count += 1 } }
        guard count != 1 else {
            for (_, value) in dictionary {
                if !value.contains(num!) { return -1 }
            }
            return num!
        }
        return -1
    }
}

//let n = 2, trust = [[1,2]] // 2
let n = 4, trust = [[1,3],[1,4],[2,3],[2,4],[4,3]] // 3
//let n = 3, trust = [[1,3],[2,3]] //3
//let n = 3, trust = [[1,2],[2,3]] // - 1
//let n = 4, trust = [[1,3],[1,4],[2,3]] //-1
print(Solution().findJudge(n, trust))






