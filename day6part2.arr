use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")

include csv
pupil = load-table:
  itl22cd :: String,
  itl22nm :: String,
  year :: Number,
  acd_year :: Number,
  school_stage :: String,
  nc-year :: String,
  nc_year_number :: Number,
  mean_projection :: Number,
  upper_pi :: Number
  lower_pi :: Numbe
  source: csv-table-url("https://data.london.gov.uk/download/e66jz/509c1efe-80ac-439c-8f0f-3287155f9528/reception_year_11_projections_2025_2034.csv", default-options)
end
  