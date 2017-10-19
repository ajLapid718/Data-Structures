HackerLand University has the following grading policy:

Every student receives a grade in the inclusive range from 0 to 100.
Any grade less than 40 is a failing grade.
Sam is a professor at the university and likes to round each # student's according to these rules:

If the difference between the grade and the next multiple of 5 is less than 3, round up to the next multiple of 5.
If the value of grade is less than 38, no rounding occurs as the result will still be a failing grade.

Sample Input

4
73
67
38
33

Sample Output

75
67
40
33

# My solution
def calculate(grade)
  difference = 0

  until (grade + difference) % 5 == 0
    difference += 1
  end

  case
  when (grade > 40) && (difference < 3)
    return grade + difference
  when (grade > 40) && (difference >= 3)
    return grade
  when grade.between?(38, 40)
    return 40
  when grade < 38
    return grade
  end
end

n = gets.to_i
n.times do
  grade = gets.to_i
  final_grade = calculate(grade)
  puts final_grade
end
