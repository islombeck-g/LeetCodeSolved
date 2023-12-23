import Foundation
//submitted 23.12.2023

class Solution {
    func isPathCrossing(_ path: String) -> Bool {
        
        // n - вверх
        // e -вправо
        // s - вниз
        // w - влево
        var pointLocation = [0, 0]
        var arrPoints:[[Int]] = []
        arrPoints.append(pointLocation)
        for i in path {
            switch i {
            case "N": 
                pointLocation[0] += 1
                break
            case "E":
                pointLocation[1] += 1
                break
            case "S":
                pointLocation[0] -= 1
                break
            case "W":
                pointLocation[1] -= 1
                break
            
            default:
                continue
            }
            if arrPoints.contains(pointLocation) {
                return true
            } else {
                arrPoints.append(pointLocation)
            }
            
            
        }
        print(arrPoints)
        return false
    }
}

var s = Solution()
var path = "NES"
print(s.isPathCrossing(path))

