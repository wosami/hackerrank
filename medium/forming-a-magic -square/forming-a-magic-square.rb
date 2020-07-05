#!/bin/ruby

require 'json'
require 'stringio'

# Complete the formingMagicSquare function below.
def formingMagicSquare(s)
    magic_arr = [
        [[8, 1, 6], [3, 5, 7], [4, 9, 2]],
        [[6, 1, 8], [7, 5, 3], [2, 9, 4]],
        [[4, 9, 2], [3, 5, 7], [8, 1, 6]],
        [[2, 9, 4], [7, 5, 3], [6, 1, 8]],
        [[2, 7, 6], [9, 5, 1], [4, 3, 8]],
        [[6, 7, 2], [1, 5, 9], [8, 3, 4]],
        [[4, 3, 8], [9, 5, 1], [2, 7, 6]],
        [[8, 3, 4], [1, 5, 9], [6, 7, 2]],
    ]
    totals = []
    magic_arr.each do |m_arr|
        total = 0
        s.zip(m_arr) do |s_row, m_row|
            s_row.zip(m_row) do |s_e, m_e|
                #p s_e, m_e
                if s_e != m_e
                    total += (s_e.to_i - m_e.to_i).abs
                    # p total
                end
            end
        end
        totals << total
        p totals
    end
    return totals.min
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
