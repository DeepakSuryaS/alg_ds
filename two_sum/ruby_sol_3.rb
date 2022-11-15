# using hash table
# time - O(n) | space - O(n)

def two_num_sum(array, target)
  nums = {}
  for num in array do
    potential_match = target - num
    if nums.key?(potential_match)
      return [potential_match, num]
    else
      nums[num] = true
    end
  end

  return []
end

arr = [3, 5, -4, 8, 11, 1, -1, 6]
target = 10
answer = two_num_sum(arr, target)

print(answer)
