
getwd()
setwd("/Users/cs87/Desktop")

require(ggplot2)
require(tidyr)
require(scales)
require(readxl)
require(RColorBrewer)

MarketShareReview <- read_excel("Review Simulator JPART3.xlsx")


MarketShareReview <- MarketShareReview %>%
  mutate(review_cat = factor(review, levels = c(1, 2, 3, 4, 5), labels = c("1 Star", "2 Stars","3 Stars","4 Stars", "5 Stars"), ordered = TRUE))


ggplot(MarketShareReview,aes(x = review, y = ms, fill=factor(review_cat))) +
  geom_bar(stat="identity") +
  #geom_errorbar(aes(ymin=mslb2, ymax=msub2), width=.1, color="black", position = position_dodge(width = 0.5)) +
  facet_grid(~scenario, scales = "free", space = "free") +
  scale_fill_brewer(palette = "Set1") +
  labs(x = "Cost",  
       y = "Preference Share (%)",  
       fill = "Customer Review Rating",
       caption="Preferences for customer review ratings as compared to the base level of an unknown rating")+
  theme(legend.position = "bottom", axis.text.x=element_blank(), axis.ticks.x =element_blank(), panel.spacing.x = unit(1, "lines")) 


