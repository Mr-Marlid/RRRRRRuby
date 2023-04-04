dataset <- read.csv('dataset.csv', sep=';', header=T, fileEncoding = 'utf-8')

mins <- apply(dataset[3:12], MARGIN = 2, min, na.rm=TRUE)
maxes <- apply(dataset[3:12], MARGIN = 2, max, na.rm=TRUE)
means <- sapply(dataset[3:12], MARGIN = 2, mean, na.rm=TRUE)
mmm <- summary(dataset)[c(1,4,6),]
not_in_range_of_3_7 <- apply((dataset[,3:12] < 3) + (dataset[,3:12] > 7), MARGIN = 2, sum, na.rm=TRUE);
vectorized <- as.vector(not_in_range_of_3_7)
decreasing_rating <- round(sort(means, decreasing = TRUE, na.last = TRUE), digits = 3)
titles <- factor(rev(names(dataset[3:12])))
ratings <- round(means, digits = 3)
plot(titles, ratings, main='Rating Of Cars', xlab="Title", ylab="Rating")
