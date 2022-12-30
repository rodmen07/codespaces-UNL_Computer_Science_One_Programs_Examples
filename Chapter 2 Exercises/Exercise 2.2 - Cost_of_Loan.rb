# C = [p * i  * (1 + i) ^ 12n] / [(1 + i) ^ 12n - 1] * 12n - p
# p is the principal amount
# i is the APR divided by 12
# n is the number of years to repay the loan
# C is the total cost of the loan in interest

# Pseudocode:
# Prompt user to enter the principal amount
# Store user input to variable
# Prompt user to enter APR
# Store user input to variable
# Prompt user to enter number of years to payoff
# Store user input to variable
# Calculate numerator
# Calculate denominator
# Perform final operations
# Return total cost.

printf "Please enter the principal amount of the loan -->"
principal = gets.to_i
printf "Please enter the annual APR in decimal-->"
rate =  gets.to_f
printf "Please enter the number of years to pay off the loan -->"
num_years = gets.to_f
monthly_rate = rate / 12
numerator = principal * monthly_rate * (1 + monthly_rate) ** (12 * num_years)
denominator = (1 + monthly_rate) ** (12 * num_years) - 1
total_cost = numerator / denominator * 12 * num_years - principal
puts total_cost.round(2)
