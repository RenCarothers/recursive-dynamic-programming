# Superdigit

# Time Complexity - O(n) where n is the length of the number passed to the method
# Space Complexity - O(n) due to array of digits, .sum
def super_digit(n)
  return n if n >= 0 && n <= 9

  n = n.abs if n < 0 # account for negative numbers, because those are still technically integers

  single_digits_array = n.digits

  single_digit_sum = single_digits_array.sum

  return super_digit(single_digit_sum)
end
  

# Time Complexity - still O(n), as new_n is just another constant introduced?
# Space Complexity - still O(n), as new_n is just anther constant introduced?
def refined_super_digit(n, k)

  single_digits_array = n.digits

  single_digit_sum = single_digits_array.sum # create a memo of the sum of n digits before introducing k

  new_n = single_digit_sum * k # now multiply it by k before introducing recursion

  return super_digit(new_n) # call recursion on the new_n, rather than on n, k number of times reduces complexity?

  # e.g instead of return super_digit(super_digit_sum * k)

end