require "pry"

class School

  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if @roster[grade] && !(@roster[grade].include?(student))
      @roster[grade] << student
    else
      @roster[grade] = [student]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_array = {}
    @roster.each do |grade_num, grade_array|
      sorted_grade = grade_array.sort
      sorted_array[grade_num] = sorted_grade
    end
    sorted_array
  end

end

school = School.new("Bayside High School")

# binding.pry
