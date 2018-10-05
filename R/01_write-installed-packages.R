#' ---
#' output: github_document
#' ---


#oh boy, I stuck a comment on github in this file that I don't have on my local machine

## deja vu from earlier!

## create a data frame of your installed packages
## hint: installed.packages() is the function you need


library(here)



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
