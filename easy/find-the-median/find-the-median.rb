#!/bin/ruby

require 'json'
require 'stringio'

# Complete the findMedian function below.
def findMedian(arr)
    n = arr.count
    a = ( n + 1 ) / 2 - 1
    return arr.sort[a]
end

#fptr = File.open(ENV['OUTPUT_PATH'], 'w')
fptr = File.open('/myapp/openfile', 'w')

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

result = findMedian arr

fptr.write result
fptr.write "\n"

fptr.close()
