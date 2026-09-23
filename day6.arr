use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")

#/workout = table: date :: String, activity :: String, duration :: Number, hadprotein :: Boolean
#/row: "2026-04-01", "Running", 20, true
#row: "2026-04-02", "Walking", 30, true
# row: "2026-04-03", "Sleeping", 40, false
#end

include csv

recipes = load-table:
  title :: String,
  servings :: Number,
  prep-time :: Number
  source: csv-table-url("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/support/5-recipes.csv", default-options)
end
