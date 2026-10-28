use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")

my-list = [list: 6, 4, 8, 0, 4]
my-list.first
my-list.rest.first
my-list.rest
my-list.rest.rest
my-list.rest.rest.rest


link(6, empty)
link(4, link(6, empty))
link(1, link(4, link(6, empty)))

fun add-till-zero(l :: List<Number>) -> Number:
  doc:"returns the sum before 0 in list"
  cases (List) l:
    |link(f, r) => 
      if f == 0: 
        0
      else:
        f + add-till-zero(r)
      end
    |empty => 0
  end
where:
  add-till-zero([list: 6, 8, 0, 3]) is 6 + add-till-zero([list: 8, 0, 3])
  add-till-zero([list: 8, 0, 3]) is 8 + add-till-zero([list: 0, 3]) 
  add-till-zero([list: 0, 3]) is 0 
  add-till-zero([list: ]) is 0
end


Limit = 4
fun string-less-than(str-lst :: List<String>) -> List<String>:
  doc:"returns the strings that are less than a limit"
  
  
  
where:
  string-less-than([list: "hi", "hello", "hey"]) is ([list: "hi", "hey"])
  string-less-than([list: "hello", "hey"]) is [list: "hey"]
  string-less-than([list: "hey"]) is [list: "hey"]
  string-less-than([list: ]) is [list: ]
end
  
   