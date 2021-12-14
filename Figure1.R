
getwd()
setwd()

require(dplyr)
require(ggplot2)
require(tidyr)
require(scales)
require(readxl)
require(RColorBrewer)
require(forcats)


MarketShareOrg <- read_excel("OrgType_Simulator.xlsx")

MarketShareOrg <- MarketShareOrg %>%
  mutate(orgtype_cat = factor(orgtype, levels = c(1, 2, 3), labels = c("For-Profit", "Nonprofit", "Government"), ordered = TRUE))
MarketShareOrg$orgtype <- factor(MarketShareOrg$orgtype, levels = c(1, 3, 2), ordered = TRUE)

ggplot(MarketShareOrg,aes(x = orgtype, y = ms, fill=factor(orgtype_cat))) +
  geom_bar(stat="identity") +
  facet_grid(~scenario, scales = "free", space = "free") +
  scale_fill_brewer(palette = "Set1") +
  labs(x = "Organizational Type",  
       y = "Preference Share (%)",  
       fill = "Organizational Type",
       title = "Figure 1: Simulated impact of organizational type on preference share", 
      caption="Preferences for organizational type as compared to the base level of Unknown Organizational Type")+
  theme(legend.position = "bottom", axis.text.x=element_blank(), axis.ticks.x =element_blank(), panel.spacing.x = unit(1, "lines")) 


