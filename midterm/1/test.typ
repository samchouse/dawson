#set page(
  numbering: "1 / 1",
  header: context {
    if counter(page).get().first() == 1 { 
      align(right)[By: Samuel Corsi-House and Felix Egan]
    }
  }
)

#align(center)[= Computer Science Mock Midterm]

+ Consider the following document in the vim editor:
  #block(
    fill: luma(230),
    width: 100%,
    inset: 8pt,
    radius: 2pt,
    [
      ```t
      print("Hello, Wrld!")❚
      ~
      ~
      ~
      ~
      ```
    ]
  )
  
  … where ❚ is your cursor location. Assuming vim is in INSERT MODE, what key sequence can a user efficiently use to navigate and correct the print error WITHOUT using the arrow keys:
  
  #enum(
    numbering: "a)",
    [Esc, K, K, K, K, K, I, o],
    [I, L, L, L, L, L, Esc, o],
    [N, J, J, J, J, J, I, o],
    [Esc, H, H, H, H, H, I, o],
    [N, H, H, H, H, H, I, o]
  )

+ Consider the following program:
  #block(
    fill: luma(230),
    width: 100%,
    inset: 8pt,
    radius: 2pt,
    [
      ```py
      x = 16
      y = 8
      z = x / y
      print(type(z))
      ```
    ]
  )

  What will this program output in the console?
  #enum(
    numbering: "a)",
    [class:int],
    [\<class 'int'>],
    [class:float],
    [\<class 'float'>],
    [2],
    ["2"],
    ["x / y"],
    ["16 / 8"],
    [Nothing: the code contains an error]
  )

+ Consider the following program:
  #block(
    fill: luma(230),
    width: 100%,
    inset: 8pt,
    radius: 2pt,
    [
      ```py
      midterm_grades = [80, 70, 90]
      final_exam_grades = [60, 90, 90]
      
      print(midterm_grades[1:2] + final_exam_grades[1:2])
      ```
    ]
  )

  What will this program output in the console?
  #enum(
    numbering: "a)",
    [80, 70],
    [[80, 70]],
    [160],
    [[160]],
    [70, 90],
    [[70, 90]],
    [Nothing: the code contains an error.]
  )

+ Which of the following statements is NOT true?

  #enum(
    numbering: "a)",
    [Python is a programming language that is computed & executed line by line],
    [The "else:" code block will be skipped if the "if <condition>:" condition is True],
    [To upload a change in a file using git, we can use the "git push --force" command],
    [To display the contents of a file in the terminal, we can use the "cat" command],
    [To save and quit a document after editing it with vim, we use the function ":sq"],
    [None of the above],
  )

+ Trace the following expression:

  #block(
    fill: luma(230),
    width: 100%,
    inset: 8pt,
    radius: 2pt,
    [
      ```py
      x = "SF1"
      y = "Dawson"
      z = x + y

      a = len(x) != len(y) and x != z and bool(y and not True)
      ```
    ]
  )

  \
  \
  \
  \
  \
  \

+ Trace the following expression:

  #block(
    fill: luma(230),
    width: 100%,
    inset: 8pt,
    radius: 2pt,
    [
      ```py
      t = 3
      u = 0.8

      a = int(t / u) == t and u != t
      ```
    ]
  )

  \
  \
  \
  \
  \
  

+ Trace the following expression:

  #block(
    fill: luma(230),
    width: 100%,
    inset: 8pt,
    radius: 2pt,
    [
      ```py
      h = "Hello"
      w = "World!"
      c = ", "
      def salutation(x: str, y: str) -> str:
        return x + y

      a = salutation(h, c) + w
      ```
    ]
  )

  \
  \
  \
  \

+ Write a function that calculates the amount of money that a company must pay a freelancer for their work each month. Assume there are 8 hours a day and 22 working days in a month, and a discount may be applied.

  *Inputs:* a float of hourly wage and a float discount (in form of 25.0). \
  *Output:* the amount to be paid by the company.

  \
  \
  \
  \
  \
  \
  \
  \
  \
  \
  \

+ Complete the function to determine whether you should upgrade the model of your phone. The phone costs \$1500.

  You should only upgrade if:
  - Your remaining bank balance will be greater than \$2000
  - Your phone is more than 4 years old
  - You have a job

  ```py
  def should_upgrade(bank_balance: float, age: float, have_job: bool) -> bool:
  ```

  \
  \
  \

+ Complete the function to calculate the resultant vector of 3 vectors. Each vector starts at the end of the last vector and the first vector begins at the origin.

  Each vector will be a list of size two in the following format: [x_comp, y_comp] \
  Ex: vec1 is [1, 5], vec2 is [-3, 2] and vec3 is [4, -8]

  The resultant vector is calculated by adding the x-component of each vector and adding the y-component of each vector together so that the final form is another vector.

  *Your solution must make use of a function that will accept an index as an argument and return the sum of each vector's component at that index.*

  ```py
  def calc_resultant(vec1: list[int], vec2: list[int], vec3: list[int]) -> list[int]:
  ```

  \
  \
  \
  \
  \
  \
  \

#set enum(numbering: "Bonus 1.")

+ Calculate the magnitude of the resultant vector from the previous question.
  $ serif("Magnitude") = sqrt(x^2 + y^2) $
  where $x$ is x_comp and $y$ is y_comp. You can use the $sqrt$ function through the ```py math.sqrt(x: float)``` function in Python.
  
  ```py
  def calc_magnitude(resultant: list[int]) -> float:
  ```
  
  \
  \
  \
  \
  \
  \

+ Calculate the angle of the resultant vector from the previous question.
  $ theta = arctan(abs(y)/abs(x)) $
  where $x$ is x_comp and $y$ is y_comp. You can use the $arctan$ function through the ```py math.degrees(math.atan(x: float))``` function in Python.
  \
  \
  Then adjust the angle according to the following cases:
  - x >= 0 and y >= 0: do nothing
  - x < 0 and y >= 0: $180 - theta$
  - x < 0 and y < 0: $180 + theta$
  - x >= 0 and y < 0: $360 - theta$

  ```py
  import math
  
  def calc_angle(resultant: list[int]) -> float:
  ```
  
  \
  \
  \
  \
  \
  \

+ What Linux distro do programmers use to flex on other programmers?
