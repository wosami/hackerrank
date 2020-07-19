#!/bin/ruby

#
# Complete the travelAroundTheWorld function below.
#
def travelAroundTheWorld(a, b, c)
    #
    # Write your code here.
    #

end

#fptr = File.open(ENV['OUTPUT_PATH'], 'w')
fptr = File.open('/myapp/openfile', 'w')

nc = gets.rstrip.split

n = nc[0].to_i

c = nc[1].to_i

a = gets.rstrip.split(' ').map(&:to_i)

b = gets.rstrip.split(' ').map(&:to_i)

result = travelAroundTheWorld a, b, c

fptr.write result
fptr.write "\n"

fptr.close()
