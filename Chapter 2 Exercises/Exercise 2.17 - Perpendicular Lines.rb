=begin 
Write a method which accepts a line segment defined by x1, y1, x2, y2 and returns the equation of perpendicular line which 
intersects the segment at the midpoint of the line segment.
To do so, we will need to calculate the midpoint of the line segment and derive the line with the slope perpendicular
to the line. The midpoint is given by (xm, ym) = (x1 +x2 /2, y1 + y2 / 2). Next, the slope of a perpendicular 
line is the negative reciprocal of the original slope (m1 * m2 = -1).
Finally we need the y intercept for each line which is found with b = y - mx.
=end

def perpendicular_line()
    printf "Enter x1: "
    x1 = gets.chomp.to_f
    printf "Enter y1: "
    y1 = gets.chomp.to_f
    printf "Enter x2: "
    x2 = gets.chomp.to_f
    printf "Enter y2: "
    y2 = gets.chomp.to_f
    m1 = (y2  - y1) / (x2 - x1)
    xm = (x1 + x2) / 2
    ym = (y1 + y2) / 2
    m2 = -(x2 - x1) / (y2 - y1)
    b1 = y1 - m1 * x1
    bm = ym - m2 * xm
    return "Original Line: \n   y = " + m1.to_s + " x + " + b1.to_s + "\nPerpendicular Line: \n   y = " + m2.to_s + " x + " + bm.to_s + "\n"
end

printf perpendicular_line

