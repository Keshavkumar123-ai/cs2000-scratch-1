use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")
include csv
import math as M
import statistics as S
  
cafe-data =
  table: day :: String, drinks-sold :: Number
    row: "Mon", 45
    row: "Tue", 30
    row: "Wed", 55
    row: "Thu", 40
    row: "Fri", 60
  end
cafe-data

drinks = get-column(cafe-data, "drinks-sold")
day = get-column(cafe-data, "day")

drinks
day

M.sum(drinks)
M.max(drinks)
M.min(drinks)
S.mean(drinks)

#class exercise 1

M.min(day)

#class exercise 2

get-row(cafe-data, M.arg-max(drinks))

#class exercise 3
quiz-scores =
  table: student :: String, quiz1 :: Number, quiz2 :: Number, quiz3 :: Number
    row: "Alice", 85, 92, 78
    row: "Bob", 90, 88, 95
    row: "Charlie", 78, 85, 82
    row: "Diana", 95, 90, 88
  end
quiz-scores

q1 = get-column(quiz-scores, "quiz1")
q2 = get-column(quiz-scores, "quiz2")
q3 = get-column(quiz-scores, "quiz3")

S.mean(q1)
S.mean(q2)
S.mean(q3)

#class exercise 4

kes = [list: 12, 8, 15, 22, 5, 18]

M.min(kes)
M.max(kes)
M.sum(kes)
M.max(kes) - M.min(kes)

#class exercise 5

employee-raw = load-table:
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

employee-raw

fun regunum(input :: String) -> String:
  doc: "replaces the commas with space"
  string-replace(input, ",", "")
where:
    regunum(",") is ""
    regunum("") is ""
end
  
emplo = transform-column(employee-raw, "REGULAR", regunum)

emplo

employee = transform-column(emplo, "REGULAR", string-to-number-default(0))

employee

emp = get-column(employee, "REGULAR")

S.mean(emp)
