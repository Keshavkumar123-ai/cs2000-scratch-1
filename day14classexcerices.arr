use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")

import lists as L

ans = [list: "yes", "NO", "maybe", "Yes", "no", "Maybe"]

ans-lower = L.map(string-to-lower, ans)
ans-lower

fun is-valid-code(s :: String) -> Boolean:
  doc:"returns true if the code is not maybe"
  not(s == "maybe")
where:
  is-valid-code("NO") is true
  is-valid-code("maybe") is false
end
ans-valid = L.filter(is-valid-code, ans-lower)

L.distinct(ans-valid)