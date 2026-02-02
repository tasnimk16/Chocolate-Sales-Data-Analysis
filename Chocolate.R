############################################

# ----------------------------
# 1. Load the data
# ----------------------------

=

chocolate <- read.csv(
  "C:/Users/tkash/Downloads/Chocolate Sales (2).csv",
  stringsAsFactors = FALSE
)


# View the first few rows
head(chocolate)


# ----------------------------
# 2. Interpret the data
# ----------------------------

# Structure of the dataset
str(chocolate)

# Summary statistics
summary(chocolate)


# ----------------------------
# 3. Clean the data
# ----------------------------

# Clean the Amount column (remove $ and commas)
chocolate$Amount <- gsub("\\$", "", chocolate$Amount)
chocolate$Amount <- gsub(",", "", chocolate$Amount)
chocolate$Amount <- as.numeric(chocolate$Amount)

# Convert Date to Date format
chocolate$Date <- as.Date(chocolate$Date, format = "%d/%m/%Y")

# Check cleaned columns
str(chocolate$Amount)
str(chocolate$Date)


# ----------------------------
# 4. Descriptive statistics
# ----------------------------

# Total sales
total_sales <- sum(chocolate$Amount, na.rm = TRUE)
total_sales

# Average sale amount
average_sale <- mean(chocolate$Amount, na.rm = TRUE)
average_sale

# Total sales by country
sales_by_country <- aggregate(Amount ~ Country, data = chocolate, sum)
sales_by_country

# Total sales by product
sales_by_product <- aggregate(Amount ~ Product, data = chocolate, sum)
sales_by_product


# ----------------------------
# 5. Visualize the data
# ----------------------------

# Bar chart: Sales by country
barplot(
  sales_by_country$Amount,
  names.arg = sales_by_country$Country,
  main = "Total Chocolate Sales by Country",
  ylab = "Total Sales ($)",
  las = 2
)

# Bar chart: Sales by product
barplot(
  sales_by_product$Amount,
  names.arg = sales_by_product$Product,
  main = "Total Chocolate Sales by Product",
  ylab = "Total Sales ($)",
  las = 2
)

# Histogram: Distribution of sale amounts
hist(
  chocolate$Amount,
  main = "Distribution of Chocolate Sale Amounts",
  xlab = "Sale Amount ($)",
  breaks = 20
)

# Scatter plot: Boxes shipped vs sales amount
plot(
  chocolate$`Boxes Shipped`,
  chocolate$Amount,
  main = "Boxes Shipped vs Sales Amount",
  xlab = "Boxes Shipped",
  ylab = "Sales Amount ($)"
)


# ----------------------------
# Yay done!
# ----------------------------

