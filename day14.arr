use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")

import lists as L

discount-codes = [list: "NEWYEAR", "student", "NONE", "student", "VIP", "none"]

discount-codes-upper = L.map(string-to-upper, discount-codes)

fun is-valid-code(s :: String) -> Boolean:
  doc:"returns true if the code is not none"
  not(s == "NONE")
where:
  is-valid-code("VIP") is true
  is-valid-code("NONE") is false
end
discount-codes-valid = L.filter(is-valid-code, discount-codes-upper)

L.distinct(discount-codes-valid)