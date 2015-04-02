# 607-week10-assignment.R
# [For your convenience], here is provided code based in Jared Lander's R for Everyone, 

#install.packages("XML")
library(XML)
theURL <- "http://www.jaredlander.com/2012/02/another-kind-of-super-bowl-pool/"
bowlPool <- readHTMLTable(theURL, which = 1, header = FALSE, stringsAsFactors = FALSE)
bowlPool

# 1. What type of data structure is bowlpool? 
# dataframe

# 2. Suppose instead you call readHTMLTable() with just the URL argument,
# against the provided URL, as shown below

theURL <- "http://www.w3schools.com/html/html_tables.asp"
hvalues <- readHTMLTable(theURL)
hvalues

# What is the type of variable returned in hvalues?
# list of 6 with two dataframes

# 3. Write R code that shows how many HTML tables are represented in hvalues
length(hvalues)
#6

# 4. Modify the readHTMLTable code so that just the table with Number, 
# FirstName, LastName, # and Points is returned into a dataframe
theURL <- "http://www.w3schools.com/html/html_tables.asp"
table1 <- readHTMLTable(theURL, which=1)
table1

# 5. Modify the returned data frame so only the Last Name and Points columns are shown.
table1_edit <- table1[3:4]
table1_edit

# 6 Identify another interesting page on the web with HTML table values.  
# This may be somewhat tricky, because while
# HTML tables are great for web-page scrapers, many HTML designers now prefer 
# creating tables using other methods (such as <div> tags or .png files).  

#library(XML)
theURL <- "http://newyork.craigslist.org/"
craiglist <- readHTMLTable(theURL)
craiglist

# 7 How many HTML tables does that page contain?
length(craiglist)
#1

# 8 Identify your web browser, and describe (in one or two sentences) 
# how you view HTML page source in your web browser.
# Internet explorer 11 and I right click and select "view source" to view the html

# 9 (Optional challenge exercise)
# Instead of using readHTMLTable from the XML package, use the functionality in the rvest package to perform the same task.  
# Which method do you prefer?  Why might one prefer one package over the other?

theURL <- "http://newyork.craigslist.org/"
library(rvest) 
craiglist_rvest <-(theURL) %>%
  html() %>%
  html_nodes("#calban a , .cal a , th") %>%
  html_text()
craiglist_rvest

#I prefer to use the rvest package with the selectorgadget tool because it is more simple to use
