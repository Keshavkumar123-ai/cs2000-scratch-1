use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")

#problem 1
fun my-doubles(l :: List<Number>) -> List<Number> block:
  doc:"return a new list with each value double"
  var result = [list: ]
  
  for each(n from l):
    result := result + [list: n * 2]
  end
  result
where:
  my-doubles([list: 10, 12, 14]) is [list: 20, 24, 28]
end

#problem 2
fun my-str-lens(s :: List<String>) -> List<Number> block:
  doc:"return a new list with corresponding length"
  var len = [list: ]
      
  for each(str from s):
    len := len + [list: string-length(str)]
      end
      len
where:
  my-str-lens([list: "hi", "bye"]) is [list: 2, 3]
      end

