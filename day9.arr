use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")

  items = table: 
  item :: String, x-coordinate :: Number, 
  y-coordinate :: Number
    row: "Sword of Dawn",           23,  -87
    row: "Healing Potion",         -45,   12
    row: "Dragon Shield",           78,  -56
    row: "Magic Staff",             -9,   64
    row: "Elixir of Strength",      51,  -33
  row: "Cloak of Invisibility",      3,    4
    row: "Ring of Fire",            38,  -92
    row: "Boots of Swiftness",     -17,   49
    row: "Amulet of Protection",    82,  -74
    row: "Orb of Wisdom",          -29,  -21
  end

#helper function to compute distance

fun distance(row :: Row) -> Number:
  doc: "Computesd distance using x and y co-oredinates"
  #take the x and y from the row data
  x = get-column(row, "x-coordinate")
  y = get-column(row, "y-coordinate")
  num-sqrt(num-sqr(x) + num-sqr(y))
  
where:
  distance(get-row(items, 0)) is-roughly num-sqrt(num-sqr(23) + num-sqr(-87))
  distance(get-row(items, 5)) is-roughly 5
end
  
items-with-dist = build-column(items, "distance", distance)

#transform column
fun sub-10(n :: Number) -> Number:
  doc: "subtracts 10"
  n - 10
where:
  sub-10(40) is 30 
  sub-10(-20) is -30
  sub-10(30) is 20
end

itemsx = transform-column(items-with-dist, "x-coordinate", sub-10)
newt = transform-column(itemsx, "y-coordinate", sub-10)


