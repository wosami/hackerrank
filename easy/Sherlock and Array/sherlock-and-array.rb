#!/bin/ruby

require 'json'
require 'stringio'

# Complete the balancedSums function below.
def balancedSums(arr)
    n = arr.size
    i = n - 2
    right_all = arr.slice(1..-1).sum
    if right_all == 0
        result = 'YES'
    else
        i.times do |j|
            if j == i
                left_all = arr.slice(1..-1).sum
                if left_all == 0
                    result = 'YES'
                    break
                else
                    result = 'NO'
                end
            else
                arr_left = arr.slice(0..j)
                arr_right =arr.slice(j+2..-1)
                if arr_left.sum == arr_right.sum
                    result = 'YES'
                    break
                else
                    result = 'NO'
                end
            end
        end
    end
    return result
end

#fptr = File.open(ENV['OUTPUT_PATH'], 'w')
fptr = File.open('/myapp/openfile', 'w')

T = gets.strip.to_i

T.times do |t_itr|
    n = gets.strip.to_i

    arr = gets.rstrip.split.map(&:to_i)

    result = balancedSums arr

    fptr.write result
    fptr.write "\n"

    #if result.is_a?(Array)
    #    fptr.write result.join " "
    #    fptr.write "\n"
    #else
    #    fptr.write result
    #    fptr.write "\n"
    #end

end



fptr.close()
