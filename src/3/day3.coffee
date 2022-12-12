codename = 'Rucksack Reorganization'
import file from '/dist/3/data3.js'

data = """
vJrwpWtwJgWrhcsFMMfFFhFp
jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL
PmmdzqPrVvPwwTWBwg
wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn
ttgJtRGJQctTZtZT
CrZsJsPPZsGzwwsLwLmpwMDw"""

data = for row in data.split '\n'
    row.split ' '

part1 = 0

part2 = 0

export { part1, part2, codename }