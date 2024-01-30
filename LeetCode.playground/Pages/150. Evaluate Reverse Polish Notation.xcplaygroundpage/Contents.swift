import Foundation

//solved at 30.01.2024
class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
      
        var stack:[Int] = []
        for i in tokens {
            if let me = Int(i) {
                stack.append(me)
            } else {
                let first = stack.removeLast()
                let second = stack.removeLast()
                switch i {
                    case "+":
                        stack.append(second + first)
                    case "*":
                        stack.append(second * first)
                    case "-":
                        stack.append(second - first)
                    case "/":
                        stack.append(second / first)
                    default:
                        fatalError("someError \(i)")
                }

            }
        }
        return stack.first ?? 0
    }
}

let tokens = ["10","6","9","3","+","-11","*","/","*","17","+","5","+"]
print(Solution().evalRPN(tokens))
