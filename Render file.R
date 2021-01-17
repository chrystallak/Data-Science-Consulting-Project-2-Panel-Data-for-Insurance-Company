report.name <- "Patient Adherence Report"
adherence <- "adherence.csv"
baseline.measurements <- "baseline measurements.csv"
ending.date <- "2020-01-01"


params = list(adherence = adherence, baseline.measurements = baseline.measurements, report.name = report.name,
              ending.date = ending.date)


the.year <- lubridate::year(ending.date)
out.path <- sprintf("../Reports/Patient Reports/%s", the.year)
print(out.path)
dir.create(path = out.path, showWarnings = F, recursive = T)


render(input = "Patient Adherence.Rmd", output_file = sprintf("%s", out.path, report.name), params = params)