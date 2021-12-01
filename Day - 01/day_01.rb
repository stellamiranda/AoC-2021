file = File.open("input.txt")
file_data = file.readlines.map(&:chomp).map(&:to_i)

i = 0
inc = 0

while i < file_data.size - 3
  window1 = file_data[i,3].sum
  window2 = file_data[i+1,3].sum
  inc += 1 if window1 < window2
  i += 1
end

puts inc
