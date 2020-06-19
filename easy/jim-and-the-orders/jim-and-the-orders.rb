#!/bin/ruby

require 'json'
require 'stringio'

# Complete the jimOrders function below.
def jimOrders(orders)
    n = orders.size
    n = [0, 0]
    return n
end

#fptr = File.open(ENV['OUTPUT_PATH'], 'w')
fptr = File.open('/myapp/openfile', 'w')

n = gets.to_i

orders = Array.new(n)

n.times do |i|
    orders[i] = gets.rstrip.split(' ').map(&:to_i)
end

result = jimOrders orders

fptr.write result.join " "
fptr.write "\n"

#if result.is_a?(Array)
#    fptr.write result.join " "
#    fptr.write "\n"
#else
#    fptr.write result
#    fptr.write "\n"
#end

fptr.close()
