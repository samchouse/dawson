#set page(
  numbering: "1 / 1",
  header: context {
    if counter(page).get().first() == 1 { 
      align(right)[By: Samuel Corsi-House and Felix Egan]
    }
  }
)

#align(center)[= Computer Science Mock Midterm Solutions]

+ d)
+ d)
+ f)
+ e)

+ #block(
    fill: luma(230),
    width: 100%,
    inset: 8pt,
    radius: 2pt,
    [
      a = len(x) != len(y) and x != z and bool(y and not True)\
      => a = (len("SF1") != len("Dawson")) and ("SF1" != (x + y)) and bool("Dawson" or not True)\
      => a = (3 != 6) and ("SF1" != ("SF1" + "Dawson")) and bool("Dawson" or False)\
      => a = True and ("SF1" != "SF1Dawson") and bool("Dawson")\
      => a = True and True and True\
      => a = True and True\
      => a = True
    ]
  )

+ #block(
    fill: luma(230),
    width: 100%,
    inset: 8pt,
    radius: 2pt,
    [
      a = int(t/u) == t and u != t\
      => a = int(3/0.8) == 3 and 0.8 != 3\
      => a = (int(3.75) == 3) and (0.8 != 3)\
      => a = (3 == 3) and (0.8 != 3)\
      => a = True and True\
      => a = True
    ]
  )

+ #block(
    fill: luma(230),
    width: 100%,
    inset: 8pt,
    radius: 2pt,
    [
      a = salutation(h, c) + w\
      => a = salutation("Hello", ", ") + "World!"\
      => a = (x = "Hello"; y = ", "; x + y;) + "World!"\
      => a = ("Hello" + ", ") + "World!"\
      => a = "Hello, " + "World!"\
      => a = "Hello, World!"
    ]
  )

+ #block(
    fill: luma(230),
    width: 100%,
    inset: 8pt,
    radius: 2pt,
    [
      ```py
      def monthly_salary(hourly_wage: float, discount: float) -> float:
        base_monthly_salary = hourly_wage * 8 * 22
        return round(base_monthly_salary - (base_monthly_salary * (discount / 100)))
      ```
    ]
  )

+ #block(
    fill: luma(230),
    width: 100%,
    inset: 8pt,
    radius: 2pt,
    [
      ```py
      def should_upgrade(bank_balance: float, age: float, have_job: bool) -> bool:
        return (bank_balance - 1500) > 2000 and age > 4 and have_job
      ```
    ]
  )

+ #block(
    fill: luma(230),
    width: 100%,
    inset: 8pt,
    radius: 2pt,
    [
      ```py
      def calc_resultant(vec1: list[int], vec2: list[int], vec3: list[int]) -> list[int]:
        def sum_at_index(index: int) -> int:
          return vec1[index] + vec2[index] + vec3[index]
      
        x_comp = sum_at_index(0)
        y_comp = sum_at_index(1)
      
        return [x_comp, y_comp]
      ```
    ]
  )

#set enum(numbering: "Bonus 1.")

+ #block(
    fill: luma(230),
    width: 100%,
    inset: 8pt,
    radius: 2pt,
    [
      ```py
      import math

      def calc_magnitude(resultant: list[int]) -> float:
        return math.sqrt(resultant[0] ** 2 + resultant[1] ** 2)
      ```
    ]
  )

+ #block(
    fill: luma(230),
    width: 100%,
    inset: 8pt,
    radius: 2pt,
    [
      ```py
      import math

      def calc_angle(resultant: list[int]) -> float:
        x = resultant[0]
        y = resultant[1]

        theta = math.degrees(math.atan(abs(y) / abs(x)))

        if x < 0 and y >= 0:
          theta = 180 - theta
        elif x < 0 and y < 0:
          theta += 180
        elif x >= 0 and y < 0:
          theta = 360 - theta

        return theta
      ```
    ]
  )

+ Arch Linux
