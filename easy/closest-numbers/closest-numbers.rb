#!/bin/ruby

require 'json'
require 'stringio'

# Complete the closestNumbers function below.
def closestNumbers(n, arr)
    sorted_arr = arr.sort
    abs_arr = []
    for i in 0..n-2 do
        diff = sorted_arr[i] - sorted_arr[i+1]
        #abs_arr << (sorted_arr[i] - sorted_arr[i+1]).abs
        abs_arr << diff.abs
    end
    min_abs = abs_arr.min
    ele_num = abs_arr.each_index.select{|i| abs_arr[i] == min_abs}
    result = []
    ele_num.each do |j|
        result.push(sorted_arr[j], sorted_arr[j+1])
    end
    return result.sort
end

#fptr = File.open(ENV['OUTPUT_PATH'], 'w')
fptr = File.open('/myapp/openfile', 'w')

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

result = closestNumbers n, arr

fptr.write result.join " "
fptr.write "\n"

fptr.close()