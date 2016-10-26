def n_times(n)
  1.upto(n) do |count|
    yield count
  end
  
end

n_times(5) { |n| puts "#{n} Echo!"}

class Integer
  def new_times
    i = 1
    while i < self + 1 
      yield i
      i += 1
    end
  end
end

class Array
  def my_each
    i = 0
    while i < self.size
      yield self[i]
      i += 1
    end
  end
end

10.new_times { |n| puts "#{n}"}

weekdays = ["monday", "tuesday", "wednesday", "thursday", "friday"]
weekdays.my_each { |day| puts day.capitalize }