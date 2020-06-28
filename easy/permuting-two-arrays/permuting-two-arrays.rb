#!/bin/ruby

require 'json'
require 'stringio'

# Complete the twoArrays function below.
def twoArrays(n, k, a, b)
    a_sorted = a.sort
    b_sorted = b.sort.reverse
    sum_ele = []
    n.times do |i|
        sum_ele << a_sorted[i] + b_sorted[i]
    end
    if sum_ele.min >= k
        return 'YES'
    else
        return 'NO'
    end
end

#fptr = File.open(ENV['OUTPUT_PATH'], 'w')
fptr = File.open('/myapp/openfile', 'w')

q = gets.to_i

q.times do |q_itr|
    nk = gets.rstrip.split

    n = nk[0].to_i

    k = nk[1].to_i

    a = gets.rstrip.split(' ').map(&:to_i)

    b = gets.rstrip.split(' ').map(&:to_i)

    result = twoArrays n, k, a, b

    fptr.write result
    fptr.write "\n"
end

fptr.close()