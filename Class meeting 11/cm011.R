library(tidyverse)
library(gapminder)
library(ggplot2)
library(ggridges)
library(scales)

#filtering data

gap_asia_2007 <- gapminder %>% filter(year == 2007, continent == "Asia")
gap_asia_2007

#Writing data
write_csv(gap_asia_2007,"exported_file.csv")

# using here::
write_csv(gap_asia_2007,here::here("data","cm011_data","exported_file.csv"))

#Reading data from disk using here:
read_csv(here::here("data","cm011_data","exported_file.csv"))

# Let's look at importing data from the internet
url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/magazines.csv"

# Now, let's read that data
read_csv(url)

#Importing .xls files from the internet
library("readxl") 

#First, need to download the file from the url and assign it a name(file.name)
xls_url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"
download.file(xls_url,here::here("data","cm011_data","some_file.xls"), mode = "wb")

file_name <- basename(xls_url)
download.file(xls_url,here::here("data","cm011_data",file_name))

# importing downloaded file
read_excel(here::here("data","cm011_data",file_name))
