#!/bin/ruby

require 'json'
require 'stringio'

# Complete the formingMagicSquare function below.
def formingMagicSquare(s)
    # the sum of any row, column, or diagonal of length 3 is always equal to 15
    # s[1][1] is always 5.
    diff_abs = 0
    s.each do |r|
        p r
        diff = r.sum - 15
        diff_abs += diff.abs
    end
    return diff_abs
    # diff_abs = []
    # if s[1][1] != 5
    #     diff = s[1][1] - 5
    #     diff_abs << diff.abs
    #     s[1][1] = 5
    # end
    # if s[1][0] == 3
    #     if s[1][2] != 7
    #         diff = s[1][2] - 7
    #         diff_abs << diff.abs
    #         s[1][2] = 7
    #     end
    #     if 

    # s.each do |r|
    #     if r[0][0] == 
    # rows_1 = s[0][0] + s[0][1] + s[0][2] - 15
    # rows_2 = s[1][0] + s[1][1] + s[1][2] - 15
    # rows_3 = s[2][0] + s[2][1] + s[2][2] - 15
    # column_1 = s[0][0] + s[1][0] + s[2][0] - 15
    # column_2 = s[0][1] + s[1][1] + s[2][1] - 15
    # column_3 = s[0][2] + s[1][2] + s[2][2] - 15
    # diagonal_right = s[0][0] + s[1][1] + s[2][2] - 15
    # diagonal_left = s[0][2] + s[1][1] + s[2][0] - 15
    # if row_1 != 15

end

#fptr = File.open(ENV['OUTPUT_PATH'], 'w')
fptr = File.open('/myapp/openfile', 'w')


s = Array.new(3)

3.times do |i|
    s[i] = gets.rstrip.split(' ').map(&:to_i)
end

result = formingMagicSquare s

fptr.write result
fptr.write "\n"

fptr.close()
