#scrape title, date and author and store as r dataframe
#Yes, the code works for the twitter link too but with protected email address

theURL <- "http://www.r-bloggers.com/search/web%20scraping"
library(rvest) 
rblogger_title <-(theURL) %>%
  html() %>%
  html_nodes("#leftcontent h2 a") %>%
  html_text()
rblogger_title

rblogger_date <-(theURL) %>%
  html() %>%
  html_nodes(".date") %>%
  html_text()
rblogger_date

rblogger_author <-(theURL) %>%
  html() %>%
  html_nodes(".meta a") %>%
  html_text()
rblogger_author

rblogger <- as.data.frame(cbind(rblogger_title, rblogger_date, rblogger_author))
rblogger


#Yes, the code works for the twitter link too but with protected email address
#run same code with different URL

theURL <- "http://www.r-bloggers.com/search/twitter"
library(rvest) 
rblogger_title <-(theURL) %>%
  html() %>%
  html_nodes("#leftcontent h2 a") %>%
  html_text()
rblogger_title

rblogger_date <-(theURL) %>%
  html() %>%
  html_nodes(".date") %>%
  html_text()
rblogger_date

rblogger_author <-(theURL) %>%
  html() %>%
  html_nodes(".meta a") %>%
  html_text()
rblogger_author

rblogger <- as.data.frame(cbind(rblogger_title, rblogger_date, rblogger_author))
rblogger
