use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")

fun my-sum(l :: List<Number>) -> Number block:
  var total = 0
  for each(num from l):
    total := total + num
  end
  total
where:
  my-sum([list: 3, 2, 6, 8, 0, 1]) is 20
end

fun my-mult(l :: List<Number>) -> Number block:
  var multi = 1
  for each(n from l):
    multi := multi * n
  end
  multi
where:
  my-mult([list: 1, 2, 3, 4]) is 24
end

