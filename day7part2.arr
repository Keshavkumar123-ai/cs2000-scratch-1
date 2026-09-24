use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")

orders = table: time :: String, amount :: Number
  row: "08:00", 10.50
  row: "09:30", 5.75
  row: "10:15", 8.00
  row: "11:00", 3.95
  row: "14:00", 4.95
  row: "16:45", 7.95
end

fun is-morning(r :: Row) -> Boolean:
  doc: "check if the time column represents a morning"
  get-column(r, "time") < "12:00"
where:
  is-morning(get-row(orders, 0)) is true
  is-morning(get-row(orders, 1)) is true
  is-morning(get-row(orders, 4)) is false
end

mo = filter-with(orders, is-morning)

le = order-by(mo, "time", false)

get-row(le, 0)


