5.upto(10) do |number|
  puts "#{number}"
end

5.times do |number|
  puts "#{number}"
end

5.times do
  puts "situp pushup chinup" 
end

5.times do |number|
  puts "#{number} situp"
  puts "#{number} pushup"
  puts "#{number} chinup"
end

1.upto(5) do |number|
  puts "#{number} situp"
  puts "#{number} pushup"
  puts "#{number} chinup"
end

weekdays = ["monday", "tuesday", "wednesday", "thursday", "friday"]

weekdays = weekdays.each  { |d| puts d.capitalize }

1.upto(10) { |n| puts "#{n} Alligator" }

1.step(15, 3) do |n|
  puts "#{n} situp"
  puts "#{n} chinup"
  puts "#{n} pushup"
end

numbers = [1, 2, 3, 4]

sum = numbers.reduce(0) { |sum, number| sum + number }
puts sum

def roll
  puts "starting method" 
  number = rand(1..6)
  yield "Larry", number
  number = rand(1..6)
  yield "Jeff", number
  puts "ending method"
end

roll do |name, number|
  puts "#{name} rolled a #{number}"
end






