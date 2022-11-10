# using left and right pointers
# time - O(nlog(n)) | space - O(1)

def twoNumSum(array, targetSum):
  array.sort()
  left = 0
  right = len(array) - 1
  while left < right:
    currentSum = array[left] + array[right]
    if currentSum == targetSum:
      return [array[left], array[right]]
    elif currentSum < targetSum:
      left += 1
    elif currentSum > targetSum:
      right -= 1
  
  return []

arr = [3, 5, -4, 8, 11, 1, -1, 6]
target = 10
answer = twoNumSum(arr, target)

print(answer)