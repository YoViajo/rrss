## Ref: https://twitter.com/sharoz/status/1593547948268437506
## How to backup your tweets with #RStats 

library(rtweet)
library(tidyverse)

# autorizar acceso a cuenta Twitter
auth_setup_default()

# obtener tweets y guardarlos en CSV
get_timeline("rcrmj", n = Inf) %>%
  write_csv("tweets.csv")

# alternative and more robust way to save the nested details like media URLs 
library(rtweet)

get_timeline("rcrmj", n = Inf, retryonratelimit = TRUE) |>
  saveRDS(file = "tweets.rds")
