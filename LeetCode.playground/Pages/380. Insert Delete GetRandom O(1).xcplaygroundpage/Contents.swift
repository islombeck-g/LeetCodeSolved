import Foundation

//solved 16.01.2024
class RandomizedSet {
    private var set: Set<Int> = []

    func insert(_ val: Int) -> Bool {
        return set.insert(val).inserted
    }
    
    func remove(_ val: Int) -> Bool {
        if set.remove(val) != nil {return true}
        return false
    }
    
    func getRandom() -> Int {
        return set.randomElement()!
    }
}

/**
 * Your RandomizedSet object will be instantiated and called as such:
 * let obj = RandomizedSet()
 * let ret_1: Bool = obj.insert(val)
 * let ret_2: Bool = obj.remove(val)
 * let ret_3: Int = obj.getRandom()
 */
