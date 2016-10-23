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


good_flyer = flyers.select { |t| t.miles_flown >= 3000}
puts good_flyer
bad_flyer = flyers.reject { |t| t.miles_flown >= 3000}
puts bad_flyer
puts flyers.any? { |t| t.status == :platinum}
puts flyers.detect { |t| t.status == :bronze}

