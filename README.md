# Module-7-Challenge

##Instructions: visual_data_analysis.ipynb contains the bulk of my code, the outliers by standard deviation and interquartile range can be found in the challenge.ipynb file. I have included my schema.sql file for my SQL schema and queries.sql file for my queries run directly in SQL.

###Quick database diagram:

![image]

###Cardholder 2 and 18 timeseries transactions:

![image]
![image]
![image]

What difference do you observe between the consumption patterns? Does the difference suggest a fraudulent transaction? Explain your rationale in the markdown report.

*Cardholder 2 is making many small daily transactions with their card, while cardholder 18 is making large but infrequent transactions. I do not believe this is evidence of fraud occuring on these cards.*

###Cardholder 25 outlier transactions:

![image]

Are there any outliers for cardholder ID 25? How many outliers are there per month? Do you notice any anomalies? Describe your observations and conclusions.

*There are certainly 9 outlier transactions, however I would not use this necessarily as evidence of fraud. These outliers potentially suggest cause to verify these transactions with the customer. There are approximatly 1.5 outliers per month.*

###Transactions under $2 by card:

Is there any evidence to suggest that a credit card has been hacked? Explain your rationale.

*While a large number of small transactions may be a suggestion of potential fraud I do not believe it is strong evidence.*

###Transactions between 7am and 9am:

Do you see any anomalous transactions that could be fraudulent?

Is there a higher number of fraudulent transactions made during this time frame versus the rest of the day?

*There are 8 transactions over $1000 that may warrent attention.*

If you answered yes to the previous question, explain why you think there might be fraudulent transactions during this time frame.

*Because these transactions are very large and occuring during a suspect timeframe, I believe they may warrant verification.*

###Small transactions by merchant:

What are the top 5 merchants prone to being hacked using small transactions?

*The top 5 marchants are Wood-Ramirez, Hood-Philips, Baker Inc, Clark and Sons, and Greene-Wood.

