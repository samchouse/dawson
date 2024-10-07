# Your first name: Samuel
# Your section: 1

import random
import matplotlib.pyplot as plt


def next_middle_square(seed: int) -> int:
    return int(str(seed**2).zfill(4)[1:3])


def list_middle_squares(seed: int) -> list[float]:
    nums = []
    for _ in range(500):
        seed = next_middle_square(seed)
        nums.append(seed / 100)

    return nums


def next_lehmer(a: int, m: int, rand: int) -> int:
    return a * rand % m


def list_lehmer(start: int) -> list[float]:
    a = 17
    m = 101

    nums = []
    for _ in range(500):
        start = next_lehmer(a, m, start)
        nums.append(start / m)

    return nums


def list_random() -> list[float]:
    nums = []
    for _ in range(500):
        nums.append(random.random())

    return nums


def chartRandomNumbers(mid, lehmer, rand):
    """
    This function draws a histogram of the three lists on the same plot
    :param mid: a list of random numbers from middle squares
    :param lehmer: a list of random numbers from lehmer
    :param rand: a list of random numbers from Python random module
    """
    multi = [mid, lehmer, rand]
    plt.hist(multi, histtype="bar", label=["middle square", "lehmer", "random module"])
    plt.legend(prop={"size": 10})
    plt.show()


def main():
    start = 29
    list1 = list_middle_squares(start)
    list2 = list_lehmer(start)
    list3 = list_random()
    chartRandomNumbers(list1, list2, list3)


if __name__ == "__main__":
    main()
