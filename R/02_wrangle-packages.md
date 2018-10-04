02\_wrangle-packages.R
================
mmorris
Thu Oct 04 15:03:14 2018

``` r
## remember to restart R here!

## create a data frame by reading from data/installed-packages.csv
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path

library(readr)
library(here)
```

    ## Warning: package 'here' was built under R version 3.4.4

    ## here() starts at C:/Users/mmorris/Documents/Cpp/R/Best practices/explore-libraries

``` r
df <- readr::read_csv(here::here("data/installed-packages.csv"))
```

    ## Parsed with column specification:
    ## cols(
    ##   Package = col_character(),
    ##   LibPath = col_character(),
    ##   Version = col_character(),
    ##   Priority = col_character(),
    ##   Depends = col_character(),
    ##   Imports = col_character(),
    ##   LinkingTo = col_character(),
    ##   Suggests = col_character(),
    ##   Enhances = col_character(),
    ##   License = col_character(),
    ##   License_is_FOSS = col_character(),
    ##   License_restricts_use = col_character(),
    ##   OS_type = col_character(),
    ##   MD5sum = col_character(),
    ##   NeedsCompilation = col_character(),
    ##   Built = col_character()
    ## )

``` r
## filter out the base and recommended packages
## keep the variables Package and Built
## if you use dplyr, code like this will work:

library(dplyr)
```

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

``` r
df2 <- df %>%
  dplyr::filter(is.na(Priority)) %>%
  dplyr::select(Package, Built)


# apt <- ipt %>%
#   filter(is.na(Priority)) %>%
#   select(Package, Built)

## write this new, smaller data frame to data/add-on-packages.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path

readr::write_csv(df2, here::here("data/wrangled.csv"))


## make a frequency table of package by the version in Built

freq_table <- as.data.frame(table(df2$Built))




## if you use dplyr, code like this will work:
# apt_freqtable <- apt %>%
#   count(Built) %>%
#   mutate(prop = n / sum(n))

## write this data frame to data/add-on-packages-freqtable.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path


readr::write_csv(freq_table, here::here('data/freq_table.csv'))


## YES overwrite the files that are there now
## they came from me (Jenny)
## they are just examples
```
