class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
   number.times{p "Woof"}
  end

  def roll_over
    puts "roll over"
  end

  def dog_years(number)
    dog_age = (number / 7)
    puts "Your dog is #{dog_age} years old"
  end

  def play_dead
    puts "Play dead"
  end

  def initialize
    puts "Initializing new puppy instance . . ."
  end
end

sammy = Puppy.new
sammy.fetch("ball")
sammy.speak(4)
sammy.roll_over
sammy.dog_years(40)
sammy.play_dead


class Student
  def initialize
    puts "Initializing new student instance . . ."
  end

  def name(name)
    puts "Hello #{name}"
  end

  def school(school)
    puts "You are enrolled at #{school}"
  end

  def major(major)
    puts "You are studying #{major}"
  end
end


students = []
50.times do
  student = Student.new
  students << student

  students.each do |method|
    student.name("Iris Nevins")
    student.school("Dev Bootcamp")
    student.major("Software Engineering")
  end
end
puts students
