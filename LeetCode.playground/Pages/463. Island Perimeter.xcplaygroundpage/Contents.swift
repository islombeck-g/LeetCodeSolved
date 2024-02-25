import Foundation

//solved at 25.02.2024
class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        
        struct Pair: Hashable {
            let num0: Int
            let num01: Int
        }
        var count = 4
        var queue = Set<Pair>()
        var isVisited = Array(repeating: Array(repeating: false, count: grid[0].count), count: grid.count)
        
        for i in 0..<grid.count {
            if !queue.isEmpty {break}
            for ii in 0..<grid[i].count {
                if grid[i][ii] == 1 {
                    queue.insert(Pair(num0: i, num01: ii))
                    break
                }
            }
        }
        
        while !queue.isEmpty {
            
            var coordinates = queue.removeFirst()
            print(coordinates)
            if isVisited[coordinates.num0][coordinates.num01] { count -= 4; continue }
            
            isVisited[coordinates.num0][coordinates.num01] = true
            
            if coordinates.num0 - 1 >= 0 {
                //слева можно проверить
                if grid[coordinates.num0 - 1][coordinates.num01] == 1 {
                    if isVisited[coordinates.num0 - 1][coordinates.num01] == false {
                        if queue.insert(Pair(num0: coordinates.num0 - 1, num01: coordinates.num01)).inserted {
                            count += 4
                        }
                    } else { count -= 2 }
                }
            }
            if coordinates.num0 + 1 < grid.count {
                //справа можно проверить
                if grid[coordinates.num0 + 1][coordinates.num01] == 1 {
                     if isVisited[coordinates.num0 + 1][coordinates.num01] == false {
                         if queue.insert(Pair(num0: coordinates.num0 + 1, num01: coordinates.num01)).inserted {
                             count += 4
                         }
                     } else { count -= 2}
                }
            }
            if coordinates.num01 - 1 >= 0 {
                //сверху можно проверить
                if grid[coordinates.num0][coordinates.num01 - 1] == 1 {
                    if isVisited[coordinates.num0][coordinates.num01 - 1] == false {
                        if queue.insert(Pair(num0: coordinates.num0, num01: coordinates.num01 - 1)).inserted {
                            count += 4
                        }
                    } else { count -= 2 }
                }
            }
            if coordinates.num01 + 1 < grid[0].count {
//                снизу можно проверить
                if grid[coordinates.num0][coordinates.num01 + 1] == 1 {
                    if isVisited[coordinates.num0][coordinates.num01 + 1] == false {
                        if queue.insert(Pair(num0: coordinates.num0, num01: coordinates.num01 + 1)).inserted {
                            count += 4
                        }
                    } else { count -= 2}
                }
            }
        }
        return count
    }
}

//let grid = [[0,1,0,0],[1,1,1,0],[1,1,0,0],[0,0,0,0]]
//let grid = [[0,1,0,0],[1,1,1,0],[0,1,0,0],[1,1,0,0]]
let grid = [[1,0]]
print(Solution().islandPerimeter(grid))



