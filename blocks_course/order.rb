class Order
  TAX_TABLE = { "CO" => 0.02, "MT" => 0.00, "AZ" => 0.04}
  attr_reader :email, :total, :state, :status

  def initialize(email, state, total, status=:pending)
    @email = email
    @state = state
    @total = total
    @status = status
  end

  def tax
    total * TAX_TABLE[state]
  end

  def to_s
    "#{email} (#{state}) Price: $#{total} order is: #{status}"
  end

end

orders = []
orders << Order.new("customer1@example.com", "MT", 300)
orders << Order.new("customer2@example.com", "AZ", 400, :completed)
orders << Order.new("customer3@example.com", "CO", 200)
orders << Order.new("customer4@example.com", "CO", 100, :completed)

puts orders

puts "Big orders:"
big_orders = orders.select { |t| t.total >= 300 }
puts big_orders

puts "small orders:"
small_orders = orders.select { |t| t.total <= 200 }
puts small_orders

puts orders.any? { |t| t.status == :completed }

puts orders.detect { |t| t.status == :completed }

pending_orders, completed_orders = orders.partition { |t| t.status == :completed }
puts pending_orders
puts completed_orders

big_orders, small_orders = orders.partition { |t| t.total >= 300}
puts "Small orders"
puts small_orders

puts "Big orders"
puts big_orders

"Newsletter emails:"
emails = []
orders.each { |t| emails << t.email.downcase}
puts emails
puts "map method"
emails = orders.map { |t| t.email.downcase }
puts emails

puts "Taxes"
co_taxes = orders.select { |t| t.state == "CO"}.map { |t| t.tax }
puts co_taxes

puts 
g_total = orders.reduce(0) { |sum, number| sum + number.total}
puts "grand total #{g_total}"
tax_total = orders.reduce(0) { |sum, number| sum + number.tax }
puts "Total tax $#{tax_total}"

