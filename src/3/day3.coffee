codename = 'Rucksack Reorganization'
import file from '/dist/3/data3.js'

# data = '''
# vJrwpWtwJgWrhcsFMMfFFhFp
# jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL
# PmmdzqPrVvPwwTWBwg
# wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn
# ttgJtRGJQctTZtZT
# CrZsJsPPZsGzwwsLwLmpwMDw'''

data = for row in file.split '\n'
    [row[0..(row.length / 2 - 1)], row[(row.length / 2)..row.length]]

# console.log data

common = []

for row in data
    common.push row[0].split('').filter (x) -> row[1].split('').includes x
    common = common.map (x) -> x.filter (y, i) -> x.indexOf(y) == i

# Lowercase item types a through z have priorities 1 through 26.
# Uppercase item types A through Z have priorities 27 through 52.

# The priority of an item is the sum of the priorities of its constituent items.
# create a map of item type to priority

priorities = {}

for i in [1..26]
    priorities[String.fromCharCode(96 + i)] = i

for i in [1..26]
    priorities[String.fromCharCode(64 + i)] = i + 26


# console.log common
# console.log priorities

part1 = 0

for row in common
    for item in row
        part1 += priorities[item]

part2 = 0

export { part1, part2, codename }
