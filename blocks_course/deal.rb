def deal
  faces = ["Jack", "Queen", "King", "Ace"]
  suits = ["Hearts", "Diamonds", "Spades", "Clubs"]
  order = []
  if block_given?
    name = "Ned"
    
    random_face = faces.sample
    random_suit = suits.sample
    order << random_suit.length.to_i + random_face.length.to_i
    yield random_face.length, random_suit.length, name
    name = "Jeff"
    random_face = faces.sample
    random_suit = suits.sample
    order << random_suit.length.to_i + random_face.length.to_i
    yield random_face.length, random_suit.length, name
    name = "Rick"
    random_face = faces.sample
    random_suit = suits.sample
    order << random_suit.length.to_i + random_face.length.to_i
    yield random_face.length, random_suit.length, name
    score = random_face.length.to_i + random_suit.length.to_i
    puts "you scored #{score}"
    
    puts "the top score is #{order.max_by { |t| t}}"
  else
  puts "no deal"
end
end

deal do |face, suit, name|
  puts "#{name} scored a #{face + suit}"
end


def real(n)
  faces = ["Jack", "Queen", "King", "Ace"]
  suits = ["Hearts", "Diamonds", "Spades", "Clubs"]
  
  1.upto(n) do
    random_face = faces.sample
    random_suit = suits.sample
    result = yield random_suit, random_face
    puts "the dealers score is #{result}"
  end
end

real(4) do |suit, face|
  "#{suit.length + face.length}"
end

