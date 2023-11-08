class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var seen = [Int: Int]()
        for i in 0 ..< nums.count {
            let difference = target - nums[i]
            if seen.keys.contains(difference) {
                return [seen[difference]!, i]
            } else {
                seen[nums[i]] = i
            }
        }
        return []
    }
}
