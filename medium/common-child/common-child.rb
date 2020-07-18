#!/bin/ruby

require 'json'
require 'stringio'

# Complete the commonChild function below.
def commonChild(s1, s2)
    arr_s1 = s1.split(//)
    arr_s2 = s2.split(//)
    common = arr_s1 & arr_s2
    if common.length != 0
        s1_com = []
        s2_com = []
        arr_s1.each do |s1|
            if common.include?(s1)
                s1_com << s1
            end
        end
        arr_s2.each do |s2|
            if common.include?(s2)
                s2_com << s2
            end
        end
        row = [0]*(s2_com.size+1)
        for i in 1..s1_com.size
            column = [0]
            for j in 1..s2_com.size
                column.push s1_com[i-1] == s2_com[j-1] ? row[j-1]+1 : [column[j-1], row[j]].max
            end
            row = column
        end
        return row[-1]
    else
        return 0
    end
    # create first liine
    # row = [0]*(s1.size+1)
    # for i in 1..s1.size
    #     column = [0]
    #     for j in 1..s2.size
    #         column.push s1[i-1] == s2[j-1] ? row[j-1]+1 : [column[j-1], row[j]].max
    #     end
    #     row = column
    # end
    # return row[-1]
    # # arr_s1 = s1.split(//)
    # # arr_s2 = s2.split(//)
    # common = arr_s1 & arr_s2
    # if common.length != 0
    #     s1_com = []
    #     s2_com = []
    #     arr_s1.each do |s1|
    #         if common.include?(s1)
    #             s1_com << s1
    #         end
    #     end
    #     arr_s2.each do |s2|
    #         if common.include?(s2)
    #             s2_com << s2
    #         end
    #     end
    #     com_length = Array.new(s1_com.length, Array.new(s2_com.length, 0))
    #     p com_length
    #     com_length[0][1] = 'A'
    #     com_length[1][1] = 'C'
    #     com_length[1][0] = 'B'
    #     p com_length[1][1]
    #     s1_com.each_with_index do |s1,i|
    #         s2_com.each_with_index do |s2, j|
    #             if i == 0
    #                 if s1 == s2
    #                     com_length[i][j] = 1
    #                 else
    #                     if j != 0
    #                         if com_length[i][j-1] != 0
    #                             com_length[i][j] = com_length[i][j-1]
    #                         end
    #                     end
    #                 end
    #             else
    #                 if j == 0
    #                     if s1 == s2
    #                         com_length[i][1] = 1
    #                     end
    #                 else
    #                     if s1 == s2
    #                         com_length[i][j] =  com_length[i-1][j-1] + 1
    #                     else
    #                         if com_length[i-1][j] != 0 && com_length[i][j-1] != 0
    #                             com_length[i][j] = [com_length[i-1][j], com_length[i][j-1]].max
    #                         elsif com_length[i-1][j] != 0
    #                             com_length[i][j] = com_length[i-1][j]
    #                         elsif com_length[i][j-1] != 0
    #                             com_length[i][j] = com_length[i][j-1]
    #                         end
    #                     end
    #                 end
    #             end
    #         end
    #     end
    #     rs = 0
    #     p com_length
    #     com_length.each do |r|
    #         if r.max > rs
    #             rs = r.max
    #         end
    #     end
    #     return rs
    # else
    #     return 0
    # end
end

#fptr = File.open(ENV['OUTPUT_PATH'], 'w')
fptr = File.open('/myapp/openfile', 'w')

s1 = gets.to_s.rstrip

s2 = gets.to_s.rstrip

result = commonChild s1, s2

fptr.write result
fptr.write "\n"

fptr.close()
