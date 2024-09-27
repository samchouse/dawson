+ Write a function that calculates the amount of money that a company must pay a freelancer for their work each month. Assume there are 8 hours a day and 22 working days in a month, and a discount may be applied.

  *Inputs:* a float of hourly wage and a float discount (in form of 25.0). \
  *Output:* the amount to be paid by the company.

+ Complete the function to determine whether you should upgrade the model of your phone. The phone costs \$1500.

  You should only upgrade if:
  - Your remaining bank balance will be greater than \$2000
  - Your phone is more than 4 years old
  - You have a job

  ```py
  def should_upgrade(bank_balance: float, age: float, have_job: bool) -> bool:
  ```

+ Complete the function to calculate the resultant vector of 3 vectors. Each vector starts at the end of the last vector and the first vector begins at the origin.

  Each vector will be a list of size two in the following format: [x_comp, y_comp] \
  Ex: vec1 is [1, 5], vec2 is [-3, 2] and vec3 is [4, -8]

  The resultant vector is calculated by adding the x-component of each vector and adding the y-component of each vector together so that the final form is another vector.

  *Your solution must make use of a function that will accept an index as an argument and return the sum of each vector's component at that index.*

  ```py
  def calc_resultant(vec1: List[int], vec2: List[int], vec3: List[int]) -> List[int]:
  ```

Bonus 1: Calculate the magnitude of the resultant vector from the previous
question.
$ serif("Magnitude") = sqrt(x^2 + y^2) $
where $x$ is x_comp and $y$ is y_comp.

```py
def calc_magnitude(resultant: List[int]) -> float:
```

Bonus 2: Calculate the angle of the resultant vector from the previous question.
$ theta = arctan(abs(y)/abs(x)) $
where $x$ is x_comp and $y$ is y_comp.

Then adjust the angle according to the following cases:

- x >= 0 and y >= 0: do nothing
- x < 0 and y >= 0: $180 - theta$
- x < 0 and y < 0: $180 + theta$
- x >= 0 and y < 0: $360 - theta$

You can use the $arctan$ function through `math.atan()` in Python.

```py
import math

def calc_angle(resultant: List[int]) -> float:
```
