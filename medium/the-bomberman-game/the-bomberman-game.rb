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
    grid.each do |arr|
        
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
