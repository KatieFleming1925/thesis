# Baseline: pre-war elections

# source: https://www.tonirodon.cat/second-republic-atlas/en/tutorial_en.html

# Install from GitHub (until CRAN submission)
# remotes::install_github("tonirodon/spain2Rep")
library(spain2Rep)
library(dplyr)
library(tidyr)
library(ggplot2)

meta <- rep_metadata()

meta$available_years          # election years, by level

meta$available_referendums    # referendum years

meta$regions

data<-rep_data()
glimpse(data)

# filtering by year

data_1936 <- rep_data(year = 1936)
nrow(data_1936)

data_1933<-rep_data(year=1933)
nrow(data_1933)

# filtering by autonomous community
galicia1930s<-rep_data(region="Galicia")
nrow(galicia1930s)
count(galicia1930s, first_platform)

