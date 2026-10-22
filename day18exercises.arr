use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")

include csv
data Bookrecord:
  | book(title :: String, author :: String, pages :: Number)
end

my-book = book("The Dispossessed", "Ursula K. Le Guin", 387)
your-book = book("To the Lighthouse", "Virginia Woolf", 209)
his-book = book("Brave New World", "Aldous Huxley", 268)

#1
fun summary-string(s :: Bookrecord) -> String:
  s.title + " " + s.author + " " + num-to-string(s.pages)
where:
  summary-string(my-book) is "The Dispossessed Ursula K. Le Guin 387"
end

#2
fun is-long-book(n :: Bookrecord) -> Boolean:
  doc:"return the book with pages more than 350"
  if n.pages > 350:
    true
  else:
    false
  end
    where:
  is-long-book(my-book) is true
  is-long-book(your-book) is false
end

#5

recipes-raw = load-table:
  title :: String,
  servings :: String,
  prep-time :: String
  source: csv-table-url("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/support/5-recipes.csv", default-options)
end
recipes-with-servings = transform-column(recipes-raw, "servings", string-to-number-default(0))
recipes = transform-column(recipes-with-servings, "prep-time", string-to-number-default(0))

recipes