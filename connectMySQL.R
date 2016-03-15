# This code is a test to make sure you can connect R the MySQL server
install.packages("RMySQL")
library(RMySQL)

# Create a database connection object
mydb <- dbConnect(MySQL(), user='root', password='password',
	dbname='test', host='104.196.119.51')

# List tables
dbListTables(mydb)

## Get query results into data frame
# 1. Save a results set object
rs <- dbSendQuery(mydb, "select * from mytable")
# 2. The results of this query remain on the MySQL server, to access the results
#    in an R data frame we need to use the fetch function. NOTE: n parameter
#    specifies the number of records to retrieve, using n=-1 retrieves all
#    pending records.
data <- fetch(rs, n=-1)

# Display query results
head(data)