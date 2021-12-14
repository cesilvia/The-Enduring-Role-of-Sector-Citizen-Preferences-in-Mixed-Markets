
getwd()
setwd()

require(dplyr)
require(ggplot2)
require(tidyr)
require(scales)
require(readxl)
require(RColorBrewer)


MarketSharePrice <- read_excel("Price_Simulator.xlsx")

MarketSharePrice <- MarketSharePrice %>%
  mutate(cost_cat = factor(cost, levels = c(10, 11, 12, 13, 14), labels = c("$10", "$11", "$12", "$13", "$14"), ordered = TRUE))

ggplot(MarketSharePrice,aes(x = cost, y = ms, fill=factor(cost_cat))) +
  geom_bar(stat="identity") +
  #geom_errorbar(aes(ymin=mslb2, ymax=msub2), width=.1, color="black", position = position_dodge(width = 0.5)) +
  facet_grid(~scenario, scales = "free", space = "free") +
  scale_fill_brewer(palette = "Set1") +
  labs(x = "Cost",  
       y = "Preference Share (%)",  
       fill = "Cost",
       title = "Figure 2: Simulated impact of price on preference share",
       caption="Preferences for price as compared to the base level of $15")+
  theme(legend.position = "bottom", axis.text.x=element_blank(), axis.ticks.x =element_blank(), panel.spacing.x = unit(1, "lines")) 



