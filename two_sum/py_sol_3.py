# using hash table
# time - O(n) | space - O(n)

def twoNumSum(array, targetSum):
  nums = {}
  for num in array:
    potentialMatch = targetSum - num
    if potentialMatch in nums:
      return [potentialMatch, num]
    else:
      nums[num] = True
  return []

arr = [3, 5, -4, 8, 11, 1, -1, 6]
target = 10
answer = twoNumSum(arr, target)

print(answer)