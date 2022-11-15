# brute force
# time - O(n^2) | space - O(1)

def two_num_sum(array, target)
  for i in 0..array.length - 1 do
    first_num = array[i]
    for j in i+1..array.length - 1 do
      second_num = array[j]
      if first_num + second_num == target
        return [first_num, second_num]
      end
    end
  end

  return []
end

arr = [3, 5, -4, 8, 11, 1, -1, 6]
target = 10
answer = two_num_sum(arr, target)

print(answer)
