# Read in a beginning and ending odometer reading from the user
# Compute the reimbursement using the formula given
# Output the result to the user

print "Enter beginning odometer reading -->"
begin_mileage = gets
print "Enter ending odometer reading -->"
ending_mileage = gets
total_mileage = (ending_mileage.to_f - begin_mileage.to_f).round(3)
reimbursement = (total_mileage * 0.575).round(3)
print "You traveled #{total_mileage} miles. At $.575 per mile your reimbursement is $#{reimbursement}" 