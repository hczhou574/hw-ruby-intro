# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum_res = 0
  arr.each do |n| sum_res += n end
  return sum_res
end

def max_2_sum arr
  # YOUR CODE HERE
 sum(arr.max(2))
  
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  !!arr.combination(2).detect {|a, b| a + b == n}
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  num = s.to_i(2)
  (num % 4 == 0) && !(s =~ /(?=[^0-1])/)
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    puts  
    raise ArgumentError.new(
    "Error argument1"
  ) if(isbn.length==0 || (!price.is_a?(Float) && !price.is_a?(Integer))|| price <= 0)
    @book_isbn = isbn
    @book_price = price
  end  
  def isbn 
    @book_isbn
  end
  def isbn=(isbn)
    @book_isbn = isbn
  end
  def price
    @book_price
  end
  def price=(price)
    @book_price = price
  end
  def price_as_string
    return "$%.2f" % @book_price
  end
end
