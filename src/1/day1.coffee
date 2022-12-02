class A
  constructor: ->
    @a = 1
  b: ->
    @a = 2
  c: ->
    @a = 3

console.log new A().a
