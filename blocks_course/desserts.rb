require 'mathn'

desserts = { "chocolate" => 1.00, "Vanilla" => 0.75, "cinnamon" => 1.25}
desserts.each do |key, value|
  puts "$#{value * 2} for a cup of #{key}"
end
