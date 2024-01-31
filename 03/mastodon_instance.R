## count of weekly status updates at fediscience.org
## https://fosstodon.org/@smach/109362138024251226

library(rtoot)
library(ggplot2)

activ_1 <- get_instance_activity("fediscience.org")


# Barplot
ggplot(activ_1, aes(x=week, y=statuses)) + 
  geom_bar(stat = "identity")
