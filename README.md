# The-Enduring-Role-of-Sector-Citizen-Preferences-in-Mixed-Markets
#### **Eva Witesman**, Romney Institute of Public Service and Ethics, Brigham Young University
#### **Curtis Child**, Department of Socilogy, Brigham Young University
#### **Chris Silvia**, Romney Institute of Public Service and Ethics, Brigham Young University


## Abstract
<table><tr><td>  
What role does sector play in citizens’ perceptions of products or services in mixed-market settings where governments compete with for-profit and nonprofit vendors, or when governments partner or contract with private-sector providers? Do the public and nonprofit sectors have an advantage over for-profit providers? Using choice-based conjoint analysis, we examine the relevance of sector to consumers and compare it other signals of quality; namely, price, third-party certifications, and consumer ratings. Of these, citizens are most sensitive to information from consumer ratings. Regarding sector, we find that citizens generally prefer nonprofit to government providers and government to for-profit providers. Sector is most relevant to consumers in low-information environments when the quality of a product or service is otherwise unclear. We extend theory by proposing four possible mechanisms for the differential value of sector to consumers (process quality, product quality, expertise quality, and moral quality) and discuss the implications of our findings for public administration theory and practice. 
</td></tr></table>

-----

This repository contains the data and code for:
> Witesman, Eva M., Curtis Child, and Chris Silvia. (Forthcoming). “The Enduring Role of Sector: Citizen Preferences in Mixed Markets” Journal of Public Administration Research and Theory.

## Replication
For our analysis, we used Sawtooth’s proprietary, built-in Analysis and Simulator tools to conduct initial analyses. Supplemental analyses and graphics were generated using Excel, Stata 16, and R.   

The following R packages should be installed in order to run the following code:
 ~~~
 install.packages("dplyr")
 install.packages("ggplot2")
 install.packages("tidyr")
 install.packages("scales")
 install.packages("readxl")
 install.packages("RColorBrewer")
 ~~~

There are four types of analysis conducted in our paper. The following describes the rationale for the analysis, the data used, the procedures followed, and the code used.

1. We estimated the part-worth utilities, or the influence of individual attribute levels on the decision. The part-worths are zero-centered for each attribute such that the average part-worth score for each attribute is set to 0. These part-worth scores serve as the basis for the analysis of conjoint analysis results. Table 4 and Figures 1, 2, and 3 can be replicated using the following:

     A. **Data:**
     
     B. **Procedure and Code:**
     

        
    

2. We use the part-worth utilities to estimate attribute importance scores. The attribute importance scores provide information regarding the relative importance of each attribute. Attribute importance scores are estimated by calculating part-worth utilities for each attribute level for each subject. The range in part-worth utilities for each attribute is then determined (the highest part-worth utility at a certain level of the given attribute minus the lowest part-worth utility at a certain level of the given attribute) before computing each attribute’s utility range as a percentage of the combined possible utility, which are then averaged across the dataset (Orme 2014). The resulting percentage is an attribute’s importance. Attribute importance scores, therefore, can be interpreted as the average percent of the total variation in utility attributable to the particular attribute. Table 5 can be replicated using the following:   

     A. **Data:**
     
     B. **Procedure:**
     
     C. **Code:**

3. We use the part-worth utilities to estimate the probability that a subject will make a purchasing decision at specified attribute levels. Because part-worth scores are zero-centered by attribute, part-worth scores for one attribute cannot be compared to the scores of the other attributes because of the difference in scaling. Therefore, we transform part-worth utilities into preference shares using a market simulator (Orme 2014). Market simulator results are easier to interpret because they are on a zero to one hundred scale, and have ratio scale properties (Orme 2014). We presented these results graphically, with each plotted point representing the probability that subjects would purchase the product at the indicated levels of the attributes. Figures 4 and 5 can be replicated using the following:   

     A. **Data:**
     
     B. **Procedure:**
     
     C. **Code:**

4. We regressed the cost levels on the average utilities for each cost level to calculate the willingness to pay for each attribute level in order to create a linear interpolation of a continuous covariate.

     A. **Data:**
     
     B. **Procedure:**
     
     C. **Code:**

