#!/bin/ruby

require 'json'
require 'stringio'

# Complete the jimOrders function below.
def jimOrders(orders)
    n = orders.size
    serve_times = []
    orders.each do |i|
        serve_time = i[0] + i[1]
        serve_times << serve_time
    end
    customer_num = {}
    n.times do |i|
        customer_num[i+1] = serve_times[i]
    end
    turns = []
    customer_num.sort_by { |_, v| v }.to_h.each_key do |k|
        turns << k
    end
    return turns
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