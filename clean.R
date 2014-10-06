library(dplyr)
library(data.table)
library(lubridate)
library(tidyr)

# hpc <- read.csv("data/household_power_consumption.txt", sep = ";", na.strings = "?", stringsAsFactors = FALSE)
# hpc <- fread("data/household_power_consumption.txt", na.strings = "?")

hpc <- read.csv("data/hpc.csv", sep = ";", na.strings = "?", stringsAsFactors = FALSE) %>%
    tbl_df %>%
    unite(Date_Time, Date, Time, sep = " ") %>%
    mutate(Date_Time = dmy_hms(Date_Time))
