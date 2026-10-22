use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")

data Bookrecord:
  | book(title :: String, author :: String, pages :: Number)
end

the-dispossessed = book("The Dispossessed", "Ursula K. Le Guin", 387)
to-the-lighthouse = book("To the Lighthouse", "Virginia Woolf", 209)
brave-new-world = book("Brave New World", "Aldous Huxley", 268)

the-dispossessed.pages 
the-dispossessed.author
the-dispossessed.title

to-the-lighthouse.pages 
to-the-lighthouse.author
to-the-lighthouse.title

brave-new-world.pages
brave-new-world.author
brave-new-world.title

the-dispossessed
to-the-lighthouse
brave-new-world