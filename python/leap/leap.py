def is_leap_year(year):
    return (
        evenly_divisible(year, 400)
        or (
            evenly_divisible(year, 4)
            and not evenly_divisible(year, 100)
        )
    )


def evenly_divisible(dividend, divisor):
    return dividend % divisor == 0
