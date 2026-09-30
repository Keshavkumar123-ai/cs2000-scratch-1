use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")

pricetable = table: Price :: Number
  row: 30
  row: 20
  row: 5
  row: 10
  row: 50
  row: 60
end 
   
fun tax(row :: Row) -> Number:
  doc: "calculate the tax ammount. tax rate is 10%"
  z = get-column(row, "Price")
  z * 0.1
where:
  tax(get-row(pricetable, 0)) is 3
  tax(get-row(pricetable, 1)) is 2
  tax(get-row(pricetable, 3)) is 1
end

pricewithtaxtable = build-column(pricetable, "tax", tax)

pricewithtaxtable