# using left and right pointers
# time - O(nlog(n)) | space - O(1)

def two_num_sum(array, target)
  array.sort
  left = 0
  right = array.length - 1
  while left < right do
    current_sum = array[left] + array[right]
    if current_sum == target
      return [array[left], array[right]]
    elsif current_sum < target
      left += 1
    elsif current_sum > target
      right -= 1
    end
  end

  return []
end

arr = [3, 5, -4, 8, 11, 1, -1, 6]
target = 10
answer = two_num_sum(arr, target)

print(answer)
