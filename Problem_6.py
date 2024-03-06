# Calculate the sum of the first one hundred natural numbers
sum_numbers = sum(range(1, 101))

# Calculate the square of the sum
square_of_sum = sum_numbers ** 2

# Calculate the sum of the squares of the first one hundred natural numbers
sum_of_squares = sum(i ** 2 for i in range(1, 101))

# Find the difference between the square of the sum and the sum of the squares
difference = square_of_sum - sum_of_squares

print(difference)
