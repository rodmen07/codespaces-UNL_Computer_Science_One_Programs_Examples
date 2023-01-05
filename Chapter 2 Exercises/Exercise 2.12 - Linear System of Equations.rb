=begin
Create a method which prompts the user for the six coefficients in the system of two lineear equations (a,b,c,d,e,f):
ax + by = c
dx + ey = f
The method should then output the solution to the system, x and y, and should account for inconsistent systems of equations or if the equations given are equivalent.
A pair of linear equations is said to be consistent if a/b != d/e
A pair of linear equations is said to be consistent and dependent if a/b == d/e == c/f
A pair of equations are said to be inconsistent if a/b == d/e != c/f
=end

def linear_system_2()
    puts("Given the pair of linear equations: ax + by = c and dx + ey = f")
    printf("Enter the coefficient a: ")
    a = gets.chomp.to_i
    printf("Enter the coefficient b: ")
    b = gets.chomp.to_i
    printf("Enter the coefficient c: ")
    c = gets.chomp.to_i
    printf("Enter the coefficient d: ")
    d = gets.chomp.to_i
    printf("Enter the coefficient e: ")
    e = gets.chomp.to_i
    printf("Enter the coefficient f: ")
    f = gets.chomp.to_i

    if a / b != d / e 
        x = (f - e * c) * b / ( d * b - e * a)
        y = (x - a * x) / b
        return "The solution for the given pair of linear equations is (" + x.to_s + ", " + y.to_s + ")"
    elsif a / b == d / e && a / b != c / f
        return "The given system of linear equations is inconsistent, and therefore has no solution"
    elsif a / b == d / e && a / b == c / f
        return "The given system of linear equations is consistent and dependent, therefore there are infinite solutions"
    end
end

p linear_system_2

    
