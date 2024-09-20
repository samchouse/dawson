def float_input(wants_grade: bool, suffix: str) -> float:
    prompt = f"Enter the {f"number of {suffix} completed" if not wants_grade else f"grade for {suffix}"}: "
    return float(input(prompt))


def weighted(grade: float, weight: int) -> float:
    return grade * (weight / 100)


weighted_avg = 0

# Pass or fail
labs_weight = 20
completed_labs = float_input(False, "labs")
if completed_labs > 6:
    weighted_avg += weighted(100, labs_weight)
else:
    weighted_avg += weighted(completed_labs / 6 * 100, labs_weight)

quizzes_weight = 15
completed_quizzes = float_input(False, "quizzes")
if completed_quizzes > 6:
    weighted_avg += weighted(100, quizzes_weight)
else:
    weighted_avg += weighted(completed_quizzes / 6 * 100, quizzes_weight)

# Assignments
assignment_weight = 4
weighted_avg += weighted(float_input(True, "Assignment 1"), assignment_weight)
weighted_avg += weighted(float_input(True, "Assignment 2"), assignment_weight)
weighted_avg += weighted(float_input(True, "Assignment 3"), assignment_weight)
weighted_avg += weighted(float_input(True, "Assignment 4"), assignment_weight)

# Midterms & finals
midterm_weight = 12.5
weighted_avg += weighted(float_input(True, "Midterm 1"), midterm_weight)
weighted_avg += weighted(float_input(True, "Midterm 2"), midterm_weight)
weighted_avg += weighted(float_input(True, "Final Exam"), 18)
weighted_avg += weighted(float_input(True, "Midterms and Final Preparation"), 6)

# how should it be rounded? down or up? decimal places? check f strings and inline if
print()
print(f"Your final grade is {round(weighted_avg, 2)}%.")
