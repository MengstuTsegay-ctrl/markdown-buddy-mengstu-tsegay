# AI Assistance Declaration: I used ChatGPT (OpenAI, accessed November 13,
# 2026) for documentation structure, wording refinement, and validation
# guidance. Prompts are recorded in AI_Prompts_Appendix.md. I reviewed the
# script logic, checked all file references, and executed the final
# calculations directly in R. I am responsible for the accuracy and
# originality of this work.

# Customer Order Analysis
# This script uses only synthetic data and base R.

input_path <- file.path("data", "synthetic_customer_orders.csv")
output_dir <- "outputs"

if (!file.exists(input_path)) {
  stop("Input file was not found: ", input_path)
}

if (!dir.exists(output_dir)) {
  dir.create(output_dir, recursive = TRUE)
}

orders <- read.csv(input_path, stringsAsFactors = FALSE)

required_columns <- c(
  "order_id", "order_date", "region",
  "category", "units", "unit_price"
)

missing_columns <- setdiff(required_columns, names(orders))
if (length(missing_columns) > 0) {
  stop("Missing required columns: ", paste(missing_columns, collapse = ", "))
}

if (anyDuplicated(orders$order_id) > 0) {
  stop("order_id values must be unique.")
}

orders$order_date <- as.Date(orders$order_date)
if (any(is.na(orders$order_date))) {
  stop("One or more order_date values are invalid.")
}

if (any(is.na(orders$units)) || any(orders$units <= 0)) {
  stop("units must contain positive numeric values.")
}

if (any(is.na(orders$unit_price)) || any(orders$unit_price <= 0)) {
  stop("unit_price must contain positive numeric values.")
}

orders$revenue <- orders$units * orders$unit_price

overall_summary <- data.frame(
  orders = nrow(orders),
  total_units = sum(orders$units),
  total_revenue = sum(orders$revenue),
  average_order_revenue = mean(orders$revenue)
)

region_summary <- aggregate(
  cbind(units, revenue) ~ region,
  data = orders,
  FUN = sum
)
region_summary <- region_summary[order(-region_summary$revenue), ]

category_summary <- aggregate(
  cbind(units, revenue) ~ category,
  data = orders,
  FUN = sum
)
category_summary <- category_summary[order(-category_summary$revenue), ]

print(overall_summary)
print(region_summary)
print(category_summary)

write.csv(
  region_summary,
  file.path(output_dir, "region_summary.csv"),
  row.names = FALSE
)
write.csv(
  category_summary,
  file.path(output_dir, "category_summary.csv"),
  row.names = FALSE
)

png(
  filename = file.path(output_dir, "revenue_by_region.png"),
  width = 1200,
  height = 800,
  res = 150
)
barplot(
  region_summary$revenue,
  names.arg = region_summary$region,
  col = "#2F75B5",
  border = NA,
  main = "Revenue by Region",
  xlab = "Region",
  ylab = "Revenue (CAD)"
)
dev.off()

message("Analysis completed. Generated files are in the outputs folder.")

