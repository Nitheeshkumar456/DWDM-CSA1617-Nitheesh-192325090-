data <- c(200, 300, 400, 600, 1000)

min_value <- min(data)
max_value <- max(data)
min_max_normalized <- (data - min_value) / (max_value - min_value)
cat("Min-Max Normalized Data:", min_max_normalized, "\n")

mean_value <- mean(data)
std_dev <- sd(data)
z_score_normalized <- (data - mean_value) / std_dev
cat("Z-Score Normalized Data:", z_score_normalized, "\n")
