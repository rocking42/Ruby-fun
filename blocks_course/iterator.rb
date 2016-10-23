def three_times
  1.upto(3) do |count|
    yield count
  end
end

three_times do |count|
  puts "#{count} Situp"
  puts "#{count} pushup"
  puts "#{count} chinup"
end

def n_times(n)
  1.upto(n) do |n|
    yield n
  end  
end

n_times(10) do |n|
  puts "#{n} chinups"
  puts "#{n} pushups"
  puts "#{n} situps"
end