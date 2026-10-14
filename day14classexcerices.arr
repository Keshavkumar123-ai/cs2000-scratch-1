use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")

import lists as L
include csv

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

salary = load-table:
  NAME :: String,
  DEPARTMENT_NAME :: String,
  TITLE :: String,
  REGULAR :: Number,
  RETRO :: Number,
  OTHER :: Number,
  OVERTIME :: Number,
  INJURED :: Number,
  DETAIL :: Number,
  QUINN_EDUCATION :: Number,
  TOTAL-GROSS :: Number,
  POSTAL :: Number
  source: csv-table-url("https://data.boston.gov/dataset/418983dc-7cae-42bb-88e4-d56f5adcf869/resource/29b3544f-752a-4cb1-a6af-a1de153d20a0/download/employee-earnings-report-2025.csv", default-options)
end

salary

Boston-employee = get-column(salary, "NAME")

fun FBE(nam :: String) -> Boolean:
  string-contains(nam, "Smith")
end
smithes = L.filter(FBE, Boston-employee)

L.length(smithes)
