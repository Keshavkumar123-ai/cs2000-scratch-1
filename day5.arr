use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")

fun choose-hat(temp :: Number) -> String:
  doc: "returns a message describing temp-appropriate head gear"
  if temp >= 80:
    "sun hat"
  else if temp >= 55:
    "no hat"
  else: 
    "winter hat"
  end
where:
  choose-hat(60) is "no hat"
  choose-hat(55) is "no hat"
  choose-hat(54.9) is "winter hat"
  choose-hat(80) is "sun hat"
end