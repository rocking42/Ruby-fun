class Student

  attr_reader :rank, :grade
  attr_accessor :name
  def initialize(name, grade, rank)
    @name = name
    @grade = grade
    @rank = rank
  end

  def grade_up()
    @grade += 1
  end

  def rank_up(n)
    @rank -= n
  end

  def to_s
    "I'm #{@name} in Grade #{@grade} with a rank of #{@rank}"
  end

end
