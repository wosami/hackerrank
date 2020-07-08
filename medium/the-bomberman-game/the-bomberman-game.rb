#!/bin/ruby

require 'json'
require 'stringio'

# Complete the bomberMan function below.
def bomberMan(n, grid)
    r = grid.length
    c = grid[0].length
    if n == 1
        return grid
    elsif n % 2 == 0
        grid.each do |grid_row|
            grid_row.length.times do |i|
                grid_row[i] = "O"
            end
        end
        return grid
    elsif n % 4 == 3
        hash_zeros = {}
        index = 0
        grid.each do |grid_row|
            row_arr = grid_row.rstrip.split(//)
            if row_arr.include?("O")
                elements = []
                row_arr.each_index {|i|
                    if row_arr[i].to_s == "O"
                        elements << i
                    end
                }
                hash_zeros[index] = elements
            else
                hash_zeros[index] = "none"
            end
            index += 1
        end
        grid.each do |grid_row|
            grid_row.length.times do |i|
                grid_row[i] = "O"
            end
        end
        if r == 1
            hash_zeros.each do |k, v|
                if v != "none"
                    v.each do |j|
                        grid[k][j] = "."
                        if j == 0
                            grid[k][j+1] = "."
                        elsif j == c - 1
                            grid[k][j-1] = "."
                        else
                            grid[k][j+1] = "."
                            grid[k][j-1] = "."
                        end
                    end
                end
            end
        elsif c == 1
            hash_zeros.each do |k, v|
                if v != "none"
                    v.each do |j|
                        grid[k][j] = "."
                        if k == 0
                            grid[k+1][j] = "."
                        elsif k == r - 1
                            grid[k-1][j] = "."
                        else
                            grid[k-1][j] = "."
                            grid[k+1][j] = "."
                        end
                    end
                end
            end
        else
            hash_zeros.each do |k, v|
                if v != "none"
                    v.each do |j|
                        grid[k][j] = "."
                        if k == 0
                            grid[k+1][j] = "."
                            if j == 0
                                grid[k][j+1] = "."
                            elsif j == c - 1
                                grid[k][j-1] = "."
                            else
                                grid[k][j+1] = "."
                                grid[k][j-1] = "."
                            end
                        elsif k == r - 1
                            grid[k-1][j] = "."
                            if j == 0
                                grid[k][j+1] = "."
                            elsif j == c -1
                                grid[k][j-1] = "."
                            else
                                grid[k][j+1] = "."
                                grid[k][j-1] = "."
                            end
                        else
                            grid[k-1][j] = "."
                            grid[k+1][j] = "."
                            if j == 0
                                grid[k][j+1] = "."
                            elsif j == c -1
                                grid[k][j-1] = "."
                            else
                                grid[k][j+1] = "."
                                grid[k][j-1] = "."
                            end
                        end
                    end
                end
            end
        end
        return grid
    else
        2.times do
            hash_zeros = {}
            index = 0
            grid.each do |grid_row|
                row_arr = grid_row.rstrip.split(//)
                if row_arr.include?("O")
                    elements = []
                    row_arr.each_index {|i|
                        if row_arr[i].to_s == "O"
                            elements << i
                        end
                    }
                    hash_zeros[index] = elements
                else
                    hash_zeros[index] = "none"
                end
                index += 1
            end
            grid.each do |grid_row|
                grid_row.length.times do |i|
                    grid_row[i] = "O"
                end
            end
            if r == 1
                hash_zeros.each do |k, v|
                    if v != "none"
                        v.each do |j|
                            grid[k][j] = "."
                            if j == 0
                                grid[k][j+1] = "."
                            elsif j == c - 1
                                grid[k][j-1] = "."
                            else
                                grid[k][j+1] = "."
                                grid[k][j-1] = "."
                            end
                        end
                    end
                end
            elsif c == 1
                hash_zeros.each do |k, v|
                    if v != "none"
                        v.each do |j|
                            grid[k][j] = "."
                            if k == 0
                                grid[k+1][j] = "."
                            elsif k == r - 1
                                grid[k-1][j] = "."
                            else
                                grid[k-1][j] = "."
                                grid[k+1][j] = "."
                            end
                        end
                    end
                end
            else
                hash_zeros.each do |k, v|
                    if v != "none"
                        v.each do |j|
                            grid[k][j] = "."
                            if k == 0
                                grid[k+1][j] = "."
                                if j == 0
                                    grid[k][j+1] = "."
                                elsif j == c - 1
                                    grid[k][j-1] = "."
                                else
                                    grid[k][j+1] = "."
                                    grid[k][j-1] = "."
                                end
                            elsif k == r - 1
                                grid[k-1][j] = "."
                                if j == 0
                                    grid[k][j+1] = "."
                                elsif j == c -1
                                    grid[k][j-1] = "."
                                else
                                    grid[k][j+1] = "."
                                    grid[k][j-1] = "."
                                end
                            else
                                grid[k-1][j] = "."
                                grid[k+1][j] = "."
                                if j == 0
                                    grid[k][j+1] = "."
                                elsif j == c -1
                                    grid[k][j-1] = "."
                                else
                                    grid[k][j+1] = "."
                                    grid[k][j-1] = "."
                                end
                            end
                        end
                    end
                end
            end
        end
        return grid
    end
end

#fptr = File.open(ENV['OUTPUT_PATH'], 'w')
fptr = File.open('/myapp/openfile', 'w')

rcn = gets.rstrip.split

r = rcn[0].to_i

c = rcn[1].to_i

n = rcn[2].to_i

grid = Array.new(r)

r.times do |i|
    grid_item = gets.to_s.rstrip
    grid[i] = grid_item
end

result = bomberMan n, grid

fptr.write result.join "\n"
fptr.write "\n"

fptr.close()
