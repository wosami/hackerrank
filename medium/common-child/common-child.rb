#!/bin/ruby

require 'json'
require 'stringio'

# Complete the commonChild function below.
def commonChild(s1, s2)
    # process
    #1: loop for each string of 1st line
    #2: check if same string is in 2nd line array
    #3: add string to the array
    #4: slice 2nd array where is same string and end loop
    #5: check if next string is in the sliced 2nd array
    #6: make array of length of the string
    #7: return maximum of length from array

end

#fptr = File.open(ENV['OUTPUT_PATH'], 'w')
fptr = File.open('/myapp/openfile', 'w')

s1 = gets.to_s.rstrip

s2 = gets.to_s.rstrip

result = commonChild s1, s2

fptr.write result
fptr.write "\n"

fptr.close()
