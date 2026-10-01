use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")

include csv
  
voter-data = 
  load-table: VoterID,FirstName,LastName,DOB,Party,Address,City,State,Zip,Phone,Email,LastVoted 
    source: csv-table-file("voter.csv", default-options)
end

voter-data

filter-with(voter-data, lam(r :: Row) -> Boolean: get-column(r, "Party") == "Republican" end)


#changing voters with unspecified affiliation as independent

fun clean-party-col(p :: String) -> String:
  doc: "changes black values to indepedent"
  if p == "":
    "Independent"
  else:
    p
  end
where:
  clean-party-col("") is "Independent"
  clean-party-col("Democrat") is "Democrat"
end
  
voters-with-independence = transform-column(voter-data, "Party", clean-party-col)

voters-with-independence 

fun normalize-phone(n :: String) -> String:
  doc: "write them as NNNNNNNNNN and (NNN) NNN NNNN"
  n2 = string-replace(n, "()", "")
  n3 = string-replace(n2, ".", "")
  n4 = string-replace(n3, "-", "")
  string-replace(n4, " ", "")
where:
  normalize-phone("(555) 123-4567") is "5551234567"
  normalize-phone("555.987.6543") is "5559876543"
end

newvoter = transform-column(voters-with-independence, "Phone", normalize-phone)

newvoter