"""
Problem 01 : Two Sum

Given an array of integers `nums` and an integer `target`, 
return the indices of the two numbers such that they add up to the target.

Example:
Input: nums = [2, 7, 11, 15], target = 9
Output: [0, 1]
Explanation: Because nums[0] + nums[1] == 9

Constraints:
- Each input has exactly one solution.
- You may not use the same element twice.
- Return the answer in any order.

Solution:
Use a hash map (dictionary) to store seen numbers and their indices.
For each number, check if (target - current number) is already in the map.
If yes, return the index of the complement and the current index.
"""




class Solution(object):
    def twoSum(self, nums, target):
        # Dictionary to store each number and its index as we loop through
        seen = {}

        # Loop through the list with both index and value
        for i, num in enumerate(nums):
            # Calculate the number needed to reach the target
            complement = target - num

            # Check if that needed number was seen earlier
            if complement in seen:
                # If found, return the indices: [index of complement, current index]
                return [seen[complement], i]

            # Otherwise, store the current number and its index in the dictionary
            seen[num] = i

        # This line is theoretically not needed, because the problem guarantees one solution
        return []
nums = [2, 7, 11, 15]
target = 9

sol = Solution()
result = sol.twoSum(nums, target)
print(result)

