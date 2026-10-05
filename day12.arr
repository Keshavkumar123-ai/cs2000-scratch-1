use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")

weather-data =
  table: date, temperature, precipitation
    row: "2025-01-01", 62, 0.1
    row: "2025-01-02", "45", 3
    row: "2025-01-03", 28, 0.2
    row: "2025-01-04", 55, -1
    row: "2025-01-05", 90, 0
  end

#Step 1: cleaning the temperature column from string to numebr.
#string to number unsafe takes a String.

fun clean-temp(v) -> Number:
  doc:"could take a numebr or string and give back the number"
  if is-string(v):
    string-to-number-unsafe(v)
  else:
    v
  end
where:
  clean-temp(44) is 44
  clean-temp("45") is 45
end

weather-clean = transform-column(weather-data, "temperature", clean-temp)


#Step 2: define cold, mild and hot ranges based on temp.
#cold if less than 50, mild if between 50 and 70, hot if more than 70

#build new column for strings based on the temp.
fun temp-to-text(r :: Row) -> String:
  doc: "create text decriptor based on temp"
  if get-column(r, "temperature") < 50:
    "cold"
  else if get-column(r, "temperature") > 70:
    "hot"
  else:
    "mild"
  end  
where:
  temp-to-text(get-row(weather-clean, 0)) is "mild"
  temp-to-text(get-row(weather-clean, 4)) is "hot"
  temp-to-text(get-row(weather-clean, 2)) is "cold"
end
  
weather-with-text = build-column(weather-clean, "temp-str", temp-to-text)

weather-with-text 
#create the bar chart.

weather-chart = freq-bar-chart(weather-with-text, "temp-str")

weather-chart

fun clean-precip(p :: Number) -> Number:
  doc: "changes negatives to 0"
  if p < 0:
    0
  else:
    p
  end
where:
 clean-precip(-1) is 0
 clean-precip(1) is 1
end

keshav = build-column(weather-with-text, "clean-precip", clean-precip)

keshav

fun precip(R :: Row) -> String:
  doc: "create text decriptor based on precipitation"
  if get-column(R, "precipitation") >= 1:
    "wet"
  else if (get-column(R, "precipitation") > 0) and (get-column(R, "precipitation") < 1):
    "drizzly"
  else:
    "dry"
  end  
where:
  precip(get-row(weather-with-text, 4)) is "dry"
  precip(get-row(weather-with-text, 1)) is "drizzly"
  precip(get-row(weather-with-text, 3)) is "dry"
  precip(get-row(weather-with-text, 2)) is "wet"
end