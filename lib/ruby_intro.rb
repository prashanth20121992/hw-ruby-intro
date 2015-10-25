# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.nil? || arr.length == 0
    return 0 
  else
    sum = 0
    arr.each {|x| 
      sum+=x }
    return sum
  end
end

#array = [1,2,3,4,5]
#puts sum(array)

def max_2_sum arr
   if arr.length == 0
     return 0
   elsif arr.length ==1
      return arr[0]
   else
     arr.sort!
     return arr[arr.length-1] + arr[arr.length-2]
   end
end

#puts max_2_sum([1,2,3,4,5])

def sum_to_n? arr, n
  if arr.length == 0 
    return false
  else
    # return  true if the two numbers in the array sum up to give you a number that is n. 
    for i in (0...arr.length)
      diff = n>i ? n-i : i-n
      for j in (0...arr.length)
        if i!=j && diff == arr[j]
          return true
        end
      end
    end
    return false
  end
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  s.downcase!
 # puts s.match(/^[a-z]/).nil?
  if s.length == 0 || s.match(/^[a-z]/).nil?
    return false
  else
    return s.match(/^[aeiou]/).nil?
  end

end

#puts starts_with_consonant?("fii")

def binary_multiple_of_4? s
  # 0010 = 3 , 0001 = 1, 0100 = 4 , 1100 = 12 , 1000 = 8, 11000 = 24
  if  s.match(/^[01]+/).nil? || s[s.length-1] != "0" || s[s.length-2] != "0" 
    return  false 
  else
    return true
  end
end
puts binary_multiple_of_4?("1010101010100")
# Part 3

class BookInStock
  # With Getter and setter
  attr_reader :isbn, :price
  attr_writer :isbn, :price
  def initialize(name,price)
    @isbn = name
    @price = price
    raise ArgumentError if name == "" || price <= 0
  end
  
  def price_as_string
    return "$#{'%.2f' % price}"
  end
end
