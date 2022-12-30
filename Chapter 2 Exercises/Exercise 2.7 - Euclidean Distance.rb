=begin
Write a method which calculates the distance between two points (x1, y1) and (x2, y2) according to the following:
sqrt((x1-x2)^2) + (y1-y2)^2)
=end 

def euclidean_distance(x1, y1, x2, y2)
    distance = Math.sqrt((x1 - x2)**2 + (y1 - y2)**2)
    return distance.round(2)
end

p euclidean_distance(1,1,1,2)
p euclidean_distance(0,0,1,1)
p euclidean_distance(-1,-2,2,-3)