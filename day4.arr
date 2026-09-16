use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")


#| homework 1: 
s = square(20, "solid", "grey")
r = rectangle(20, 200, "solid", "brown")
a = above(r, s)
ra = rectangle(60, 20, "solid", "black")
o = overlay-xy(ra, 0, 0, a)
c = circle(10, "solid", "orange")
overlay-xy(c, -50, 0, o)
|#



fun greeting(name :: String) -> String:
  doc: "Returns a message greeting the person"
  "Welcome " + name
end

r = rectangle(100, 33, "solid", "red")
g = rectangle(100, 33, "solid", "green")
b = rectangle(100, 33, "solid", "blue")

above(b, above(g, r))

p = rectangle(100, 33, "solid", "pink")
y = rectangle(100, 33, "solid", "yellow")
bl = rectangle(100, 33, "solid", "black")

above(bl, above(y, p))


  