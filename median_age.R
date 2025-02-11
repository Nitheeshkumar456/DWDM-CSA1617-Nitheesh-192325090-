age_intervals <- c("1-5","5-15","15-20","20-50","50-80")
frequencies <- c(200,450,300,1500,700,44)
N <- sum(frequencies)
cumulative_freq <- cumsum(frequencies)
half_N <- N/2
median_class_index <- which(cumulative_freq >= half_N)[1]
L<-as.numeric(strsplit(age_intervals[median_class_index], "-")[[1]][1])
F<-cumulative_freq[median_class_index - 1]
f<-frequencies[median_class_index]
h<-as.numeric(strsplit(age_intervals[median_class_index], "-")[[1]][2])-L
median_age <- L + ((half_N - F)/f)*h
print(paste("the median age",round(median_age,2)))
