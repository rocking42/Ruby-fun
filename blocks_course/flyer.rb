class Flyer
  attr_reader :name, :email, :miles_flown
  attr_accessor :status

  def initialize(name, email, miles_flown, status=:bronze)
    @name = name
    @email = email
    @miles_flown = miles_flown
    @status = status
  end

  def to_s
    "#{name} (#{email}): #{miles_flown} - #{status}"
  end
end

flyers = []
flyers << Flyer.new("Larry", "larry@example.com", 4000, :platinum)
flyers << Flyer.new("Moe", "moe@example.com", 1000)
flyers << Flyer.new("Curly", "curly@example.com", 3000, :gold)
flyers << Flyer.new("Shemp", "shemp@example.com", 2000)

flyers.each do |n|
  puts "#{n.name} - #{n.miles_flown} miles"
end

sum = 0
flyers.each do |n|
  sum += n.miles_flown
end
puts "Total miles flown: #{sum}"

promotions = {
  "United" => 1.5,
  "Delta" => 2.0,
  "Lufthansa" => 2.5
}

promotions.each do |key, value|
  puts "earn #{value} miles by flying with #{value}!"
end

puts promotions.detect { |key, value| key == "United" && value == 1.5 }

flyers.each do |n|
  promotions.each do |key, value|
    puts "#{n.name} could earn #{n.miles_flown * value} by flying with #{key}!"
  end
end

first_class, coach_class = flyers.partition { |t| t.status == :platinum }
puts first_class
puts coach_class

status_flyer = flyers.map { |t| "#{t.name} (#{t.status.upcase})" }
puts status_flyer

total_miles = flyers.map { |t| "#{t.name} has flown #{t.miles_flown * 1.6} Kilometres" }
puts total_miles
g_total = flyers.reduce(0) { |sum, number| sum + number.miles_flown }
puts g_total

bronze_total = flyers.select { |t| t.status == :bronze}.map { |t| t.miles_flown * 1.6 }.reduce(:+)
puts bronze_total

top_flyer = flyers.max_by { |t| t.miles_flown }
puts top_flyer


