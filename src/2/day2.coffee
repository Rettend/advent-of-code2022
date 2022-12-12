codename = 'Rock Paper Scissors'
import file from '/dist/2/data2.js'

data = for row in file.split '\n'
    row.split ' '

data = data.map (row) ->
    [row[0].charCodeAt(0) - 64, row[1].charCodeAt(0) - 87]

part1 = 0

for row in data
    [them, me] = row
    if me == them
        part1 += 3 + me
    else if (
        (me == 1 and them == 3) or
        (me == 2 and them == 1) or
        (me == 3 and them == 2)
    )
        part1 += 6 + me
    else
        part1 += 0 + me

part2 = 0

for row in data
    [them, result] = row
    if them == 1
        if result == 1
            part2 += 3 + 0
        else if result == 2
            part2 += 1 + 3
        else if result == 3
            part2 += 2 + 6
    else if them == 2
        if result == 1
            part2 += 1 + 0
        else if result == 2
            part2 += 2 + 3
        else if result == 3
            part2 += 3 + 6
    else if them == 3
        if result == 1
            part2 += 2 + 0
        else if result == 2
            part2 += 3 + 3
        else if result == 3
            part2 += 1 + 6

export { part1, part2, codename }
