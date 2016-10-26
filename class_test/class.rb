require_relative 'student'

class Class

  def initialize(name, teacher)
    @name = name.upcase
    @teacher = teacher.capitalize
    @class = []
  end

  def add_student(student)
    @class << student
  end

  def year_up
    @class.each { |t| t.grade_up}
  end

  def all_students
    puts "There is #{@class.length} students in #{@teacher}'s class #{@name}"
    puts "students:".upcase
    puts @class
  end
end
