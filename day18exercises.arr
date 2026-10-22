use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")

data Bookrecord:
  | book(title :: String, author :: String, pages :: Number)
end

my-book = book("The Dispossessed", "Ursula K. Le Guin", 387)
your-book = book("To the Lighthouse", "Virginia Woolf", 209)
his-book = book("Brave New World", "Aldous Huxley", 268)


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