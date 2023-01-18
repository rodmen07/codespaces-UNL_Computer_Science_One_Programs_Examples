=begin
Write a program which computes the total for a bill. The program should prompt the user for a sub-total, whether the user
is entitled for a user discount (1 for yes, 2 for no), and then compute the new sub-total and apply a 7.35% sales tax.
The program should output the receipt details along with the grand total.
=end

def total_bill()
    printf "Please enter a sub-total: "
    sub_total = gets.chomp.to_f
    printf "Apply employee discount (1 = yes, 2 = no)? "
    employee_discount = gets.chomp.to_i
    if employee_discount == 1
        discount = sub_total * 0.15
    else
        discount = 0
    end
    taxes = (sub_total -  discount) * 0.0735
    total = sub_total - discount + taxes
    p " Sub-Total  $ " + sub_total.to_s
    p " Discount   $ " + discount.round(2).to_s
    p " Taxes      $ " + taxes.round(2).to_s
    return " Total      $ " + total.round(2).to_s
end

p total_bill