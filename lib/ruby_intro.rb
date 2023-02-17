# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  # get size
  size = arr.size
  # if empty return 0
  if size == 0
    return 0
  # if one element return element
  elsif size == 1
    return arr.at(0)
  else
    # get max
    sum = arr.max
    # delete one instance of max using one index of max
    arr.delete_at(arr.index(arr.max))
    # return sum of two maxes
    sum = sum + arr.max
    return sum
  end
end

def sum_to_n? arr, n
  # get size
  size = arr.size
  # if empty return false
  if size == 0
    return false
  # if one element return false 
  elsif size == 1
    return false
  end
  # loop through array and check each sum
  for x in 0..(size - 1)
    for y in (x + 1)..(size - 1)
      # if sum == n return true
      if((arr[x] + arr[y]) == n)
        return true
      end
    end
  end
    return false
end

# Part 2

def hello(name)
  string = "Hello, " + name
  return string
end

def starts_with_consonant? s
  # convert to upsercase and use start with method (returns true if it starts with consonant)
  return s.upcase.start_with?("B", "C", "D", "F", "G", "J", "K", "L", "M", "N", "P", "Q", "S", "T", "V", "X", "Z", "H", "R", "W", "Y")
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock

  # getter and setters
  attr_accessor :isbn 
  attr_accessor :price

  # constructor
  def initialize(isbn, price)
    # argument checks
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end
  
  # print with 2 decimal format and dollar sign
  def price_as_string
    format("$%.2f", @price)
  end
  
end
