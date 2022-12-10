codename = 'Calorie Counting'
import file from '/dist/1/data1.js'

data = for num in file.split '\n'
    parseInt num

list = []
data.reduce (acc, num) ->
    if isNaN num
        list.push acc
        acc = 0
    else
        acc += num

part1 = Math.max list...

part2 = list
    .sort (a, b) -> b - a
    .slice 0, 3
    .reduce (acc, num) -> acc + num

export { part1, part2, codename }
