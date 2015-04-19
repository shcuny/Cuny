#Nytimes API exercise
#Book Key: 9e93b710fd260570afcb74bf990866a1:3:71600637

library(plyr) #ldply
library(dplyr) # %>%
library(RCurl) #getURL
library(rjson)

api_key <- "9e93b710fd260570afcb74bf990866a1:3:71600637"
nytimesurl <- paste("http://api.nytimes.com/svc/books/v3/lists.json?list=hardcover-fiction&api-key=",api_key, sep="")
nytimesurl

json_data <- getURL(nytimesurl)
json_ds <- fromJSON(json_data)

best_sellers_data <- fromJSON(json_data)
#best_sellers_data
books_json_df <- ldply(best_sellers_data[["results"]],  function(x) { data.frame(x) } )

books_ds <- books_json_df %>%
  select(rank,book_details.title,book_details.author)
books_ds