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
    arr_s1 = s1.split(//)
    arr_s2 = s2.split(//)
    common = arr_s1 & arr_s2
    commons = {}
    if common.length != 0
        arr_s1.each_with_index do |s, i|
            if arr_s2.include?(s)
                elements = []
                elements << s
                num1 = arr_s1.index(s)
                num2 = arr_s2.index(s)
                s1_rest = arr_s1.slice(num1+1..-1)
                s2_rest = arr_s2.slice(num2+1..-1)
                s1_rest.each do |s1|
                    if s2_rest.include?(s1)
                        elements << s1
                        num = arr_s2.index(s1)
                        s2_rest = arr_s2.slice(num+1..-1)
                    end
                end
                commons[i] = elements
                p commons[i]
            end
        end
    else
        return 0
    end
    p commons
    max_length = 0
    commons.each do |k, v|
        if max_length < v.length
            max_length = v.length
        end
    end
    return max_length
end

#fptr = File.open(ENV['OUTPUT_PATH'], 'w')
fptr = File.open('/myapp/openfile', 'w')

s1 = gets.to_s.rstrip

s2 = gets.to_s.rstrip

result = commonChild s1, s2

fptr.write result
fptr.write "\n"

fptr.close()
