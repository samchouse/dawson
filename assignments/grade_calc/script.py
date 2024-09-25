def int_input(suffix: str) -> float:
    prompt = f"Enter the number of {suffix} completed: "
    return float(input(prompt))


def float_input(suffix: str) -> float:
    prompt = f"Enter the grade for {suffix}: "
    return float(input(prompt))


def weighted(grade: float, weight: int) -> float:
    return grade * (weight / 100)


weighted_avg = 0

# Pass or fail
labs_weight = 20
completed_labs = int_input("labs")
if completed_labs > 6:
    weighted_avg += weighted(100, labs_weight)
else:
    weighted_avg += weighted(completed_labs / 6 * 100, labs_weight)

quizzes_weight = 15
completed_quizzes = int_input("quizzes")
if completed_quizzes > 6:
    weighted_avg += weighted(100, quizzes_weight)
else:
    weighted_avg += weighted(completed_quizzes / 6 * 100, quizzes_weight)

# Assignments
assignment_weight = 4
weighted_avg += weighted(float_input("Assignment 1"), assignment_weight)
weighted_avg += weighted(float_input("Assignment 2"), assignment_weight)
weighted_avg += weighted(float_input("Assignment 3"), assignment_weight)
weighted_avg += weighted(float_input("Assignment 4"), assignment_weight)

# Midterms & finals
midterm_weight = 12.5
weighted_avg += weighted(float_input("Midterm 1"), midterm_weight)
weighted_avg += weighted(float_input("Midterm 2"), midterm_weight)
weighted_avg += weighted(float_input("Final Exam"), 18)
weighted_avg += weighted(float_input("Midterms and Final Preparation"), 6)

print()
print(f"Your final grade is {round(weighted_avg, 2)}%.")
