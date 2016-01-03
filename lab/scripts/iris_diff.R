# Compare the iris data set from UCI with the one that comes with R. 
if (!require("sqldf")) { install.packages("sqldf"); require("sqldf") }
iris_data_r <- iris
url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data"
iris_data_1 <- read.csv(url, header = F)
names(iris_data_1) <- names(iris_data_r)
iris_data_1$Species <- gsub("Iris-", "", iris_data_1$Species)
iris_data_r$id <- row.names(iris_data_r)
iris_data_1$id <- row.names(iris_data_1)
cat("What's in R's iris data but not in UCI's iris data?", "\n")
sqldf('SELECT * FROM iris_data_r EXCEPT SELECT * FROM iris_data_1')
cat("What's in UCI's iris data but not in R's iris data?", "\n")
sqldf('SELECT * FROM iris_data_1 EXCEPT SELECT * FROM iris_data_r')
