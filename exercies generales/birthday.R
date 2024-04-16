# Load library for handling dates
library(lubridate)

# Get current year
current_year <- year(Sys.Date())

# Get year of birth from user input
year_of_birth <- as.integer(readline(prompt = "Enter your year of birth: "))
# Calculate age
age <- current_year - year_of_birth

# Check age and display message
if (year_of_birth == current_year) {
  cat("You were born this year.\n")
} else if (current_year == year_of_birth + 1) {
  cat("You are", age, "year old.\n")
} else if (current_year > year_of_birth) {
  cat("You are", age, "years old.\n")
} else if (current_year + 1 == year_of_birth) {
  cat("You will be born in", abs(age), "year.\n")
} else {
  cat("You will be born in", abs(age), "years.\n")
}
