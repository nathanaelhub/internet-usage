#install packages
install.packages("readr")
install.packages("dplyr")
# Cleaning Data in R

#set path
setwd("/Users/nathanaeljohnson/Desktop/Final")

#read in data

library(readr)
df <- read.csv("CountriesByUsers.csv")

setwd("/Users/nathanaeljohnson/Desktop/Final/Countries")
library(dplyr)
temp = list.files(pattern ="*.csv")
myfiles = lapply(temp, read.delim)

China <- read.csv("China.csv")
India <- read.csv("India.csv")
US <- read.csv("US.csv")
Brazil <- read.csv("Brazil.csv")
Japan <- read.csv("Japan.csv")
Russia <- read.csv("Russia.csv")
Indonesia <- read.csv("Indonesia.csv")
Mexico <- read.csv("Mexico.csv")
Germany <- read.csv("Germany.csv")
Philippines <- read.csv("Philippines.csv")
UK <- read.csv("UK.csv")
Pakistan <- read.csv("Pakistan.csv")

Countries <- bind_rows(China, India, US, Brazil, Japan, Russia, Indonesia, Mexico,
                       Germany,Philippines, UK, Pakistan)
glimpse(Countries)

final_data = merge(df,Countries)

glimpse(final_data)
setwd("/Users/nathanaeljohnson/Desktop/Final")
write_csv(final_data, "Final_data.csv")
