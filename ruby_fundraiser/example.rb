class Never

  def initialize(name, title)
    @name = name
    @title = title
  end

  def add_many
    @title += 300
  end

  def to_s
    "the title is #{@name} and the title is #{@title}"
  end

end

new1 = Never.new("next", 100)
new1.add_many
puts new1

def add_two_numbers(x, y)
  x + y
end

def first_last(first, last)
  puts "#{first.capitalize} #{last.capitalize}"
end

first_last("ned", "pike")
mine = add_two_numbers(10, 6)
puts mine + 43
