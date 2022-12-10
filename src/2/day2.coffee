codename = 'Rock Paper Scissors'
import file from '/dist/2/data2.js'

data = for row in file.split '\n'
    row.split ' '

# data = [['A', 'Y'], ['B', 'X'], ['C', 'Z']]

data = data.map (row) ->
    [row[0].charCodeAt(0) - 64, row[1].charCodeAt(0) - 87]

console.log data

part1 = 0

for row in data
    [them, me] = row
    if me == them
        part1 += 3 + me
    else if me == 1 and them == 3 or me == 2 and them == 1 or me == 3 and them == 2
        part1 += 6 + me 
    else
        part1 += 0 + me

console.log part1

part2 = 0

export { part1, part2, codename }
