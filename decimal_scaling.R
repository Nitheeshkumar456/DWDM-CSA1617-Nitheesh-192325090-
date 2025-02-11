x <- 35
min_value <- 0
max_value <- 100
mean_age <- 50
std_dev_age <- 12.94

normalized_value_min_max <- (x - min_value) / (max_value - min_value)
z_score_value <- (x - mean_age) / std_dev_age
j <- ceiling(log10(max_value))
normalized_value_decimal_scaling <- x / 10^j

cat("Min-Max Normalized Value: ", normalized_value_min_max, "\n")
cat("Z-Score Normalized Value: ", z_score_value, "\n")
cat("Decimal Scaling Normalized Value: ", normalized_value_decimal_scaling, "\n")
