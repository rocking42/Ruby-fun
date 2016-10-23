cards = ["Jack", "Queen", "King", "Ace", "Joker"]
cards.reverse_each do |card|
  print card.upcase + " - "
  puts card.length
end

scores = { 
  "Larry" => 10,
  "Moe" => 8,
  "Curly" => 12
}
scores.each do |key, value|
  puts "#{key} scored a #{value}!"
end