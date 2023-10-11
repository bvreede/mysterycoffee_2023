library(mysterycoffee)

make_groups(names = classmates)

filepath_1 <- "inst/extdata/employees.csv"
employees <- read.csv(filepath_1)

filepath_2 <- system.file("extdata", "employees.csv", package = "mysterycoffee")
employees_packaged <- read.csv(filepath_2)

if(3 != 4){
  stop("Error!")
}

friends <- pick_starwarsfriends()
groups <- make_groups_by_time(friends)
View(groups)
