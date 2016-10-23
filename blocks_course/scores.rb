scores = [83, 71, 92, 64, 98, 87, 75, 69]

puts "High scores:"
high_scores = scores.select { |t| t > 80 }
puts high_scores
puts "Low scores:"
low_scores = scores.reject { |t| t > 80 }
puts low_scores
puts scores.any? { |t| t < 70 }
no_pass = scores.detect { |t| t < 70 }
puts no_pass
puts "New scores:"
scores.select! { |t| t > 70 }
puts scores
puts "Bye even:"
scores.reject! { |t| t%2 == 0 }
puts scores
new_scores = [83, 71, 92, 64, 98, 87, 75, 69]
puts "double"
double_scores = new_scores.map { |t| t * 2}
puts double_scores

total_score = new_scores.reduce(:+)
puts total_score
even_scores, odd_scores = new_scores.partition { |t| t % 2 == 0 }
puts even_scores
puts odd_scores

