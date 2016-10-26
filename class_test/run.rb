require_relative 'class'

student1 = Student.new("Jerry", 7, 103)
student2 = Student.new("Kiara", 7, 103)
class1 = Class.new("8A", "Ms Smith")
class1.add_student(student1)
class1.add_student(student2)
class1.year_up
student1.rank_up(10)
student1.grade_up
class1.all_students
