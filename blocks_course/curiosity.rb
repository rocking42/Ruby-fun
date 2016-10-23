def greet
  yield "Larry", 18
end

greet { |name, age| puts "Hello, #{name}. You dont look #{age}" }

def progress
  num = "."
    0.step(100, 10) do |count|
      yield num += "."
      puts "#{count}%"
    end
end

progress do |num|
  puts "loading please wait #{num}"
end