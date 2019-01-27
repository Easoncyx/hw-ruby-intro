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
  return "Hello, " + name
end

def starts_with_consonant? s
  # /^[b-df-hj-np-tv-z]/i.match(s) != nil
  if s =~ /\A[^AEIOUaeiou]/ and s =~ /\A[[:alpha:]]/
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  return true if s == '0'
  if s =~ /^[10]*00$/
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError if isbn.length == 0 || price <= 0
    @isbn = isbn
    @price = price
  end
  def price_as_string
    "$%.2f" % @price
  end
  def isbn
    @isbn
  end
  def isbn=(isbn)
    @isbn = isbn
  end
  def price
    @price
  end
  def price=(price)
    @price = price
  end
end
