#!/bin/ruby

require 'json'
require 'stringio'

# Complete the closestNumbers function below.
def closestNumbers(arr)


end

#fptr = File.open(ENV['OUTPUT_PATH'], 'w')
fptr = File.open('/myapp/openfile', 'w')

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

result = closestNumbers arr

fptr.write result.join " "
fptr.write "\n"

fptr.close()