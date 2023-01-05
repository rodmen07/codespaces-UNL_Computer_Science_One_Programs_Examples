=begin
Create a method which calculates current, volts, or resistance based on the other two inputs according to Ohm's Law:
I = V / R, where I is the current (in amps), V is the volatage (in volts), and R is the resistance (in Ohms).
=end


def ohms_law()
    # Prompt for first user input
    printf("Enter the first unit type: ")
    unit_type_1 = gets.chomp
    if unit_type_1 == "V"
        printf ("Enter the voltage: ")
        unit1 = gets.to_f
    elsif unit_type_1 == "R"
        printf("Enter the resistance: ")
        unit1 = gets.to_f
    elsif unit_type_1 == "I"
        printf("Enter the current: ")
        unit1 = gets.to_f  
    end

    # Prompt for second user input
    printf("Enter the second unit type: ") 
    unit_type_2 = gets.chomp
    if unit_type_2 == "V"
        printf ("Enter the voltage: ")
        unit2 = gets.to_f
    elsif unit_type_2 == "R"
        printf("Enter the resistance: ")
        unit2 = gets.to_f
    elsif unit_type_2 == "I"
        printf("Enter the current: ")
        unit2 = gets.to_f 
    end
    
    # Logic for each of the six possible combinations of user input with corresponding output.
    if unit_type_1 == "V" && unit_type_2 == "R"
        current = unit1 / unit2
        return "The current is " + current.round(3).to_s + " amps"
    elsif unit_type_1 == "V" && unit_type_2 == "I"
        resistance = unit1 / unit2
        return "The resistance is " + resistance.round(3).to_s + " Ohms"
    elsif unit_type_1 == "R" && unit_type_2 == "I"
        voltage = unit1 * unit2
        return "The volatge is " + voltage.round(3).to_s + " volts"
    elsif unit_type_1 == "R" && unit_type_2 == "V"
        current = unit2 / unit1
        return "The current is " + current.round(3).to_s + " amps"
    elsif unit_type_1 == "I" && unit_type_2 == "V"
        resistance = unit2 / unit1
        return "The resistance is " + resistance.round(3).to_s + " Ohms"
    elsif unit_type_1 == "I" && unit_type_2 == "R"
        voltage = unit1 * unit2
        return "The volatge is " + voltage.round(3).to_s + " volts"
    end

end

p ohms_law
