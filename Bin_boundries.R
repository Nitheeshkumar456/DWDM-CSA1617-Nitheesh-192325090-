data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)

bin_size <- 4

bin_means <- sapply(seq(1, length(data), by = bin_size), function(i) {
  bin_data <- data[i:min(i+bin_size-1, length(data))]
  mean(bin_data)
})
cat("Smoothing by Bin Mean:", bin_means, "\n")

bin_medians <- sapply(seq(1, length(data), by = bin_size), function(i) {
  bin_data <- data[i:min(i+bin_size-1, length(data))]
  median(bin_data)
})
cat("Smoothing by Bin Median:", bin_medians, "\n")

bin_boundaries <- sapply(seq(1, length(data), by = bin_size), function(i) {
  bin_data <- data[i:min(i+bin_size-1, length(data))]
  c(min(bin_data), max(bin_data))
})
cat("Smoothing by Bin Boundaries:", bin_boundaries, "\n")
