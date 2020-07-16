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
    re_arr_s1 = arr_s1.reverse
    re_arr_s2 = arr_s2.reverse
    common = arr_s1 & arr_s2
    commons = {}
    re_commons = {}
    commons_2 = {}
    re_commons_2 = {}
    if common.length != 0
        max_length_1 = 0
        max_length_2 = 0
        max_length_3 = 0
        max_length_4 = 0
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
                        num = s2_rest.index(s1)
                        s2_rest = s2_rest.slice(num+1..-1)
                    end
                end
                commons[i] = elements
                # p commons[i].length
                if max_length_1 < commons[i].length
                    max_length_1 = commons[i].length
                end
            end
        end
        re_arr_s1.each_with_index do |s, i|
            if re_arr_s2.include?(s)
                elements = []
                elements << s
                num1 = re_arr_s1.index(s)
                num2 = re_arr_s2.index(s)
                re_s1_rest = re_arr_s1.slice(num1+1..-1)
                re_s2_rest = re_arr_s2.slice(num2+1..-1)
                re_s1_rest.each do |s1|
                    if re_s2_rest.include?(s1)
                        elements << s1
                        num = re_s2_rest.index(s1)
                        re_s2_rest = re_s2_rest.slice(num+1..-1)
                    end
                end
                re_commons[i] = elements
                # p re_commons[i].length
                if max_length_2 < re_commons[i].length
                    max_length_2 = re_commons[i].length
                end
            end
        end
        arr_s2.each_with_index do |s, i|
            if arr_s1.include?(s)
                elements = []
                elements << s
                num1 = arr_s1.index(s)
                num2 = arr_s2.index(s)
                s1_rest = arr_s1.slice(num1+1..-1)
                s2_rest = arr_s2.slice(num2+1..-1)
                s2_rest.each do |s2|
                    if s1_rest.include?(s2)
                        elements << s2
                        num = s1_rest.index(s2)
                        s1_rest = s1_rest.slice(num+1..-1)
                    end
                end
                commons_2[i] = elements
                # p commons_2[i].length
                if max_length_3 < commons_2[i].length
                    max_length_3 = commons_2[i].length
                end
            end
        end
        re_arr_s2.each_with_index do |s, i|
            if re_arr_s1.include?(s)
                elements = []
                elements << s
                num1 = re_arr_s1.index(s)
                num2 = re_arr_s2.index(s)
                re_s1_rest = re_arr_s1.slice(num1+1..-1)
                re_s2_rest = re_arr_s2.slice(num2+1..-1)
                re_s2_rest.each do |s2|
                    if re_s1_rest.include?(s2)
                        elements << s2
                        num = re_s1_rest.index(s2)
                        re_s1_rest = re_s1_rest.slice(num+1..-1)
                    end
                end
                re_commons_2[i] = elements
                # p re_commons_2[i].length
                if max_length_4 < re_commons_2[i].length
                    max_length_4 = re_commons_2[i].length
                end
            end
        end
    else
        return 0
    end
    max_length = [max_length_1, max_length_2, max_length_3, max_length_4].max
    # p commons
    # max_length = 0
    # commons.each do |k, v|
    #     if max_length < v.length
    #         max_length = v.length
    #     end
    # end
    # re_commons.each do |k, v|
    #     if max_length < v.length
    #         max_length = v.length
    #     end
    # end
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
