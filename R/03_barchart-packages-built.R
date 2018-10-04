## remember to restart R here!

## make a barchart from the frequency table in data/add-on-packages-freqtable.csv



library(readr)
library(here)

df <- readr::read_csv(here::here('data/freq_table.csv'))

## read that csv into a data frame
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path

bp <- barplot(df$Freq, names.arg = df$Var1, horiz = TRUE)

# write_file(bp, path = here::here('figs/barplotMM.png'))

# png(filename='figs/barplotMM.png')
# plot(bp)
# dev.off()

library(ggplot2)

## if you use ggplot2, code like this will work:
barplot2 <- ggplot(df, aes(x = Var1, y = Freq)) +
  geom_bar(stat = "identity")

ggsave(barplot2, path = here::here('figs/barplotMM.png'))

ggsave(barplot2,path = 'figs/barplotMM.png')

## write this barchart to figs/built-barchart.png
## if you use ggplot2, ggsave() will help
## idea: try using here::here() to create the file path

## YES overwrite the file that is there now
## that came from me (Jenny)
