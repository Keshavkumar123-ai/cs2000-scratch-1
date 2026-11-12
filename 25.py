#level intermediate

#lists 
fruits = ["apple", "pear", "banana", "blueberry"]

#access a value in the list
fruits[0]
fruits[1]
fruits[2]
fruits[3]

#filtering
#only want fruits that are 5 letters or less
list(filter(lambda fruit: len(fruit) <= 5, fruits))

#map
#convert all fruits to upper case
list(map(lambda fruit: fruit.upper(), fruits))

# pyret:
# data Fruit
# | fruit(name :: String, expiry :: string)
# end

#python:

@dataclass #called a decorator in python
class Fruit:
    name: str
    expiry: str
p = Fruit("pear", "Nov 19 2026")
p
p.name
p.expiry

elements = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
list(map(lambda elem: elem * elem, elements))

list(filter(lambda elem: elem % 2 == 0, elements))

alphabets = ["a", "b", "c"]
list(map(lambda alpha: alpha.upper(), alphabets))

