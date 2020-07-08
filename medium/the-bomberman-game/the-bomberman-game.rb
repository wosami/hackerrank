#!/bin/ruby

require 'json'
require 'stringio'

# Complete the bomberMan function below.
def bomberMan(n, grid)
    # process
    # 1. check where is 0
    # 2. do nothing 1 second
    # 3. put 0 in all place after 2 second
    # 4. remove where was 0 and neibors of it and check where is 0
    # 5. repeat 3-4
    if n == 1
        return grid
    elsif n % 2 == 0
        grid.each do |grid_row|
            grid_row.length.times do |i|
                grid_row[i] = "0"
            end
        end
        return grid
    else
        # n = n-2
        # n.times do
        hash_zeros = {}
        index = 0
        grid.each do |grid_row|
            row_arr = grid_row.rstrip.split(//)
            # p row_arr
            # get index number where is 0 from grid_row
            #elements = row_arr.each_index.select{|i| grid_row[i] == "0"}
            if row_arr.include?("O")
                elements = []
                row_arr.each_index {|i|
                    if row_arr[i].to_s == "O"
                        elements << i
                    end
                }
                # p elements
                hash_zeros[index] = elements
            else
                hash_zeros[index] = "none"
            end
            # p index
            index += 1
        end
        grid.each do |grid_row|
            grid_row.length.times do |i|
                grid_row[i] = "0"
            end
        end
        hash_zeros.each do |k, v|
            if v != "none"
                v.each do |j|
                    if k == 0
                        grid[k][j] = "."
                        grid[k+1][j] = "."
                        if j == 0
                            grid[k][j+1] = "."
                        elsif j == 5
                            grid[k][j-1] = "."
                        else
                            grid[k][j+1] = "."
                            grid[k][j-1] = "."
                        end
                    elsif k == 5
                        grid[k][j] = "."
                        grid[k-1][j] = "."
                        if j == 0
                            grid[k][j+1] = "."
                        elsif j == 5
                            grid[k][j-1] = "."
                        else
                            grid[k][j+1] = "."
                            grid[k][j-1] = "."
                        end
                    else
                        grid[k][j] = "."
                        grid[k-1][j] = "."
                        grid[k+1][j] = "."
                        if j == 0
                            grid[k][j+1] = "."
                        elsif j == 5
                            grid[k][j-1] = "."
                        else
                            grid[k][j+1] = "."
                            grid[k][j-1] = "."
                        end
                    end
                end
            end
        end
    # i,j = 0
    # grid.each do |arr|
    #     arr.each do |e|
    #         if e == 0
    #             zeros << [i, j]
    #         end
    #         j++
    #     end
    #     i++
    # end
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

# grid example
# [[.,.,.,.,.,.,.],[.,.,.,O,.,.,.],..,[O,O,.,.,.,.,.]]

result = bomberMan n, grid

fptr.write result.join "\n"
fptr.write "\n"

fptr.close()
