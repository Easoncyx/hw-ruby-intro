# def sum arr
#   sum = 0
#   arr.each{|num| sum = sum + num}
#   sum
# end
#
# puts sum([1,3,3])

# def max_2_sum arr
#   if arr.length == 1
#     return arr[0]
#   elsif arr.length == 0
#     return 0
#   end
#   arr = arr.sort
#   return arr[-2] + arr[-1]
# end
#
# puts max_2_sum([1,4,3,2])


# def sum_to_n? arr, n
#   if arr.length == 0 || arr.length == 1
#     return false
#   end
#   dic = Hash.new
#   0.upto(arr.length - 1) do |i|
#     if dic.key?(arr[i])
#       return true
#     else
#       dic[n-arr[i]] = i
#     end
#   end
#   return false
# end
#
# puts sum_to_n?([1,4,3,2],5)


# def starts_with_consonant? s
#   if s =~ /\A[^AEIOUaeiou]/ and s =~ /\A[[:alpha:]]/
#     return true
#   else
#     return false
#   end
# end
#
# puts starts_with_consonant? "123"

# def binary_multiple_of_4? s
#   return true if s == '0'
#   if s =~ /^[10]*00$/
#     return true
#   else
#     return false
#   end
# end
#
# puts binary_multiple_of_4? "10001100001000"
#
# s = "100011000"
# puts s =~ /^[10]*00$/


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
a = BookInStock.new("123123",20)
puts a.isbn
a.isbn = "321456"
puts a.isbn
puts a.price_as_string
puts a.inspect
