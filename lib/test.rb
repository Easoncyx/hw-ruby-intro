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

def sum_to_n? arr, n
  if arr.length == 0 || arr.length == 1
    return false
  end
  dic = Hash.new
  0.upto(arr.length - 1) do |i|
    if dic.key?(arr[i])
      return true
    else
      dic[n-arr[i]] = i
    end
  end
  return false
end

puts sum_to_n?([1,4,3,2],5)
