def float_input(prompt: str) -> int:
  return int(input(prompt))

def average(nums: list[int]) -> float:
  return float(sum(nums)) / float(len(nums))

comp_labs = float_input("Enter the number of labs completed: ")
comp_quizzes = float_input("Enter the number of quizzes completed: ")
grade_ass_one = float_input("Enter the grade for Assignment 1: ")
grade_ass_two = float_input("Enter the grade for Assignment 2: ")
grade_ass_three = float_input("Enter the grade for Assignment 3: ")
grade_ass_four = float_input("Enter the grade for Assignment 4: ")
grade_mid_one = float_input("Enter the grade for Midterm 1: ")
grade_mid_two = float_input("Enter the grade for Midterm 2: ")
grade_final = float_input("Enter the grade for Final Exam: ")
grade_preps = float_input("Enter the grade for Midterms and Final Preparation: ")

weighted_avg = 0

weighted_avg += comp_labs / 6 * 100 * .2
weighted_avg += comp_quizzes / 6 * 100 * .15
weighted_avg += average([grade_ass_one, grade_ass_two, grade_ass_three, grade_ass_four]) * .16
weighted_avg += average([grade_ass_one, grade_ass_two]) * .25
weighted_avg += grade_final * .18
weighted_avg += grade_preps * .06

# how should it be rounded? down or up? decimal places?
print(round(weighted_avg, 1))
