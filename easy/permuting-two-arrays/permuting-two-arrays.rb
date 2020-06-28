#!/bin/ruby

require 'json'
require 'stringio'

# Complete the twoArrays function below.
def twoArrays(k, A, B)
    

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

q = gets.to_i

q.times do |q_itr|
    nk = gets.rstrip.split

    n = nk[0].to_i

    k = nk[1].to_i

    A = gets.rstrip.split(' ').map(&:to_i)

    B = gets.rstrip.split(' ').map(&:to_i)

    result = twoArrays k, A, B

    fptr.write result
    fptr.write "\n"
end

fptr.close()