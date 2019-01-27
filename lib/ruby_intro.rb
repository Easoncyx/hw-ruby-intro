# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each{|num| sum = sum + num}
  sum
end

def max_2_sum arr
  if arr.length == 1
    return arr[0]
  elsif arr.length == 0
    return 0
  end
  arr = arr.sort
  return arr[-2] + arr[-1]
end

def sum_to_n? arr, n
  if arr.length == 0 || arr.length == 1
    return false
  end
  dic = {}
  0.upto(arr.length - 1) do |i|
    if dic.key?(arr[i])
      return true
    else
      dic[n-arr[i]] = i
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
