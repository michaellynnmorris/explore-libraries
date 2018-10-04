01\_write-installed-packages.R
================
mmorris
Thu Oct 04 15:01:33 2018

``` r
## deja vu from earlier!

## create a data frame of your installed packages
## hint: installed.packages() is the function you need


library(here)
```

    ## Warning: package 'here' was built under R version 3.4.4

    ## here() starts at C:/Users/mmorris/Documents/Cpp/R/Best practices/explore-libraries

``` r
df <- as.data.frame(installed.packages())


## optional: select just some of the variables, such as
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built

## write this data frame to data/installed-packages.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path


library(readr)


readr::write_csv(df, path = here::here("data", "installed-packages.csv"))

## YES overwrite the file that is there now (or delete it first)
## that came from me (Jenny)
## it an example of what yours should look like and where it should go
```
