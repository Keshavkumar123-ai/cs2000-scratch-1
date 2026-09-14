use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")

red-sq = square(40, "solid", "red")

#using definitions
above(red-sq, red-sq)

#without definitions
above(square(40, "solid", "red"), square(40, "solid", "red"))

rect-2x = above(red-sq, red-sq)

purple-triangle = triangle(35, "solid", "purple")

x = 50
y = "green"
z = "solid"


ex2-sq = square(x, z, y)

yellowcirc = circle(10, "solid", "yellow")
blackrect = rectangle(50, 100, "solid", "black")
double-circ = beside(yellowcirc, yellowcirc)

above(double-circ, blackrect)
above(yellowcirc, blackrect)

rect-a = rectangle(100, 20, "solid", "dark orange")
rect-b = rectangle(100, 20, "solid", "white")
rect-c = rectangle(100, 20, "solid", "green")
circ-a = cirlce(10, "outline", "blue")

above(above(rect-a, rect-b), rect-c)


