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

+ #block(
    fill: luma(230),
    width: 100%,
    inset: 8pt,
    radius: 2pt,
    [
      ```py
      def monthly_salary(hourly_wage: float, discount: float) -> float:
        base_monthly_salary = hourly_wage * 8 * 22
        return round(base_monthly_salary * (discount / 100))
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
      def calc_resultant(vec1: List[int], vec2: List[int], vec3: List[int]) -> List[int]:
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
      def calc_magnitude(resultant: List[int]) -> float:
      return sqrt(resultant[0]^2 + resultant[1]^2)
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
      
      def calc_angle(resultant: List[int]) -> float:
        theta = math.atan(abs(y) / abs(x))
      
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
