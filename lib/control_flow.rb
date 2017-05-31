# EASY

# Return the argument with all its lowercase characters removed.
def destructive_uppercase(str)
  result = ""
  chars = str.chars
  chars.each do |el|
  if el == el.downcase
    next
  else
    result << el
  end
end
result
end

# Return the middle character of a string. Return the middle two characters if
# the word is of even length, e.g. middle_substring("middle") => "dd",
# middle_substring("mid") => "i"
def middle_substring(str)
  if str.length.even?
    return str[str.length/2-1..str.length/2]
  else
    return str[str.length/2]
  end
end

# Return the number of vowels in a string
def num_vowels(str)
  vowels = "aeiou"
  count = 0
  array = str.chars
  array.each do |l|
    if vowels.include?(l)
      count +=1
    end
  end
  count
end

# Return the factoral of the argument (num). A number's factorial is the product
# of all whole numbers between 1 and the number itself. Assume the argument will
# be > 0.
def factorial(num)
  result = 1
  (1..num).each do |n|
    result *= n
  end
  result
end


# MEDIUM

# Write your own version of the join method. separator = "" ensures that the
# default seperator is an empty string.
def my_join(arr, separator = "")
  result = ""
  arr[0..arr.length-1].each_with_index do |el, i|
    if i == arr.length-1
      result << el
    else
      result << el << separator
    end
  end
  result
end

# Write a method that converts its argument to weirdcase, where every odd
# character is lowercase and every even is uppercase, e.g.
# weirdcase("weirdcase") => "wEiRdCaSe"
def weirdcase(str)
  array = str.chars
  array.each_index do |i|
    if (i+1).odd?
      array[i] = array[i].downcase
    else
      array[i] = array[i].upcase
    end
  end
  array.join
end

# Reverse all words of five more more letters in a string. Return the resulting
# string, e.g., reverse_five("Looks like my luck has reversed") => "skooL like
# my luck has desrever")
def reverse_five(str)
  words = str.split
  words.each_index do |i|
    if words[i].length >= 5
      words[i] = words[i].reverse
    end
  end
  words.join(" ")
end

# Return an array of integers from 1 to n (inclusive), except for each multiple
# of 3 replace the integer with "fizz", for each multiple of 5 replace the
# integer with "buzz", and for each multiple of both 3 and 5, replace the
# integer with "fizzbuzz".
def fizzbuzz(n)
  array = []
  (1..n).each do |el|
    if el % 3 == 0 && el % 5 == 0
      array << "fizzbuzz"
    elsif el % 3 == 0
      array << "fizz"
    elsif el % 5 == 0
      array << "buzz"
    else
      array << el
    end
  end
  array
end


# HARD

# Write a method that returns a new array containing all the elements of the
# original array in reverse order.
def my_reverse(arr)
  result = []
  arr.each_index do |i|
    result << arr[arr.length-(i+1)]
  end
  result
end

# Write a method that returns a boolean indicating whether the argument is
# prime.
def prime?(num)
count = 0
(1..num).each do |n|
  if num % n == 0
    count += 1
  end
end
count == 2
end

# Write a method that returns a sorted array of the factors of its argument.
def factors(num)
  factor_array = (1..num).select {|n| num % n == 0}
end

# Write a method that returns a sorted array of the prime factors of its argument.
def prime_factors(num)
  result = []
  factors = factors(num)
  factors.each do |n|
    if prime?(n)
      result << n
    end
  end
  result
end

# Write a method that returns the number of prime factors of its argument.
def num_prime_factors(num)
  prime_factors(num).length
end


# EXPERT

# Return the one integer in an array that is even or odd while the rest are of
# opposite parity, e.g. oddball([1,2,3]) => 2, oddball([2,4,5,6] => 5)
def oddball(arr)
  odd_nums = arr.select {|num| num.odd?}
  even_nums = arr.select {|num| num.even?}
  if odd_nums.length == 1
    return odd_nums[0]
  else
    return even_nums[0]
  end
end
