class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let nums = nums1 + nums2
        let sorted = nums.sorted { $0 < $1 }

        let c = Int(sorted.count / 2)
        if sorted.count % 2 == 0 {
            return (Double(sorted[c]) + Double(sorted[c - 1])) / 2
        }
        return Double(sorted[c])
    }
}
