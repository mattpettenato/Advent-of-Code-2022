# In case the Elves get hungry and need extra snacks, they need to know which Elf to ask: they'd like to know how many Calories are being carried by the Elf carrying the most Calories. In the example above, this is 24000 (carried by the fourth Elf).

# Find the Elf carrying the most Calories. How many total Calories is that Elf carrying?

# --- Part Two ---

# By the time you calculate the answer to the Elves' question, they've already realized that the Elf carrying the most Calories of food might eventually run out of snacks.

# To avoid this unacceptable situation, the Elves would instead like to know the total Calories carried by the top three Elves carrying the most Calories. That way, even if one of those Elves runs out of snacks, they still have two backups.

# In the example above, the top three Elves are the fourth Elf (with 24000 Calories), then the third Elf (with 11000 Calories), then the fifth Elf (with 10000 Calories). The sum of the Calories carried by these three elves is 45000.

# Find the top three Elves carrying the most Calories. How many Calories are those Elves carrying in total?


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
  total_cal << sum
  if sum > max
    max = sum
  end
end

puts total_cal