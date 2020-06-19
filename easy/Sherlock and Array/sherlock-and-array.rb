#!/bin/ruby

require 'json'
require 'stringio'

# Complete the balancedSums function below.
def balancedSums(arr)


end

#fptr = File.open(ENV['OUTPUT_PATH'], 'w')
fptr = File.open('/myapp/openfile', 'w')

T = gets.strip.to_i

T.times do |T_itr|
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
