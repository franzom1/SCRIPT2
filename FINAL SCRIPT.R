# Load the data (replace with your actual file path)
raw_data <- read.csv("H:/sta215/raw_data.csv", header = TRUE)

# Check the column names to ensure they match
colnames(raw_data)

# Boxplot for 'republican_party' and 'patriotism'
# Combine the two variables into a data frame for boxplot comparison
boxplot_data <- data.frame(
  Group = rep(c("Republican Party", "Patriotism"), 
              each = nrow(raw_data)), 
  Values = c(raw_data$republican_party, raw_data$patriotism)
)

# Create the boxplot
boxplot(
  Values ~ Group, 
  data = boxplot_data, 
  main = "Boxplot: Republican Party vs Patriotism",
  xlab = "Variables",
  ylab = "Values",
  col = c("lightblue", "lightgreen"), # Colors for the boxes
  border = "black" # Border color for the boxes
)

# Add a grid for better readability
grid(nx = NULL, ny = NULL, lty = 2, col = "gray")

# Load the data (replace with your actual file path)
raw_data <- read.csv("H:/sta215/raw_data.csv", header = TRUE)

# Check the column names to ensure they match
colnames(raw_data)

# Set up an empty plotting area
plot.new()  # Start a new plot
plot.window(
  xlim = range(raw_data$republican_party, na.rm = TRUE), 
  ylim = range(raw_data$patriotism, na.rm = TRUE)
)

# Add axes
axis(1)  # X-axis
axis(2)  # Y-axis

# Add labels and title
title(
  main = "Scatter Plot: Republican Party vs Patriotism",
  xlab = "Republican Party",
  ylab = "Patriotism"
)

# Add points to the plot
points(
  raw_data$republican_party, 
  raw_data$patriotism, 
  col = "blue",   # Point color
  pch = 19,       # Point shape
  cex = 1.2       # Point size
)

# Add a box around the plot
box()

# Optional: Add a grid for better readability
grid(nx = NULL, ny = NULL, lty = 2, col = "gray")


# Load the data (replace with your actual file path)
raw_data <- read.csv("H:/sta215/raw_data.csv", header = TRUE)

# Check the column names to ensure they match
colnames(raw_data)

# Summary statistics for race_ethnicity (assuming it's categorical)
# Frequency table for race_ethnicity
race_ethnicity_summary <- table(raw_data$race_ethnicity)

# Print race_ethnicity summary
cat("\nRace/Ethnicity Frequency Table:\n")
print(race_ethnicity_summary)

# Summary statistics for political_affiliation (assuming it's categorical)
# Frequency table for political_affiliation
political_affiliation_summary <- table(raw_data$political_affiliation)

# Print political_affiliation summary
cat("\nPolitical Affiliation Frequency Table:\n")
print(political_affiliation_summary)

# For mean and standard deviation, assuming numerical variables (if available)
# For example, if you have a numerical variable like household_income
# Replace "household_income" with the actual name of the numerical variable you want to analyze

# Check if a numerical variable exists (e.g., household_income)
if ("household_income" %in% colnames(raw_data)) {
  # Mean and Standard Deviation for household_income
  mean_household_income <- mean(raw_data$household_income, na.rm = TRUE)
  sd_household_income <- sd(raw_data$household_income, na.rm = TRUE)
  
  cat("\nMean of Household Income: ", mean_household_income, "\n")
  cat("Standard Deviation of Household Income: ", sd_household_income, "\n")
}

# Create a contingency table for race_ethnicity and political_affiliation
contingency_table <- table(raw_data$race_ethnicity, raw_data$political_affiliation)

# Print the contingency table
cat("\nContingency Table between Race/Ethnicity and Political Affiliation:\n")
print(contingency_table)

# Add row and column totals to the table
cat("\nContingency Table with Margins:\n")
print(addmargins(contingency_table))

# Perform a Chi-squared test for independence between race_ethnicity and political_affiliation
chi_squared_test <- chisq.test(contingency_table)

# Print Chi-squared test results
cat("\nChi-Squared Test Results:\n")
print(chi_squared_test)

# Load the data (replace with your actual file path)
raw_data <- read.csv("H:/sta215/raw_data.csv", header = TRUE)

# Check the column names to ensure they match
colnames(raw_data)

# Create a contingency table for race_ethnicity and political_affiliation
contingency_table <- table(raw_data$race_ethnicity, raw_data$political_affiliation)

# Print the contingency table
cat("\nContingency Table between Race/Ethnicity and Political Affiliation:\n")
print(contingency_table)

# Add row and column totals to the table
cat("\nContingency Table with Margins:\n")
print(addmargins(contingency_table))
