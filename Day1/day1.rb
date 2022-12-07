# In case the Elves get hungry and need extra snacks, they need to know which Elf to ask: they'd like to know how many Calories are being carried by the Elf carrying the most Calories. In the example above, this is 24000 (carried by the fourth Elf).

# Find the Elf carrying the most Calories. How many total Calories is that Elf carrying?

file = File.open("input.txt")

total_cal = []
sum = 0
max = 0
file.each_line do |line|
  if line.to_i == 0
    sum = 0
  end
  if line.to_i != 0
    sum += line.to_i
  end
  if sum > max
    max = sum
  end
end

puts max