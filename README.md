# Module-7-Challenge

## Instructions: 
visual_data_analysis.ipynb contains the bulk of my code, the outliers by standard deviation and interquartile range can be found in the challenge.ipynb file. I have included my schema.sql file for my SQL schema and queries.sql file for my queries run directly in SQL.

### Quick database diagram:

![image](https://github.com/Mccalabrese/SQL-and-Postgre-to-detect-fraud/blob/3147a22460f9f06c5536a5fa1a570b412c034e70/Images/QuickDBD-Free%20Diagram.png)

### Cardholder 2 and 18 timeseries transactions:

![image](https://github.com/Mccalabrese/SQL-and-Postgre-to-detect-fraud/blob/3147a22460f9f06c5536a5fa1a570b412c034e70/Images/Screenshot%202024-02-09%20at%203.09.59%E2%80%AFPM.png)
![image](https://github.com/Mccalabrese/SQL-and-Postgre-to-detect-fraud/blob/3147a22460f9f06c5536a5fa1a570b412c034e70/Images/Screenshot%202024-02-09%20at%203.09.54%E2%80%AFPM.png)
![image](https://github.com/Mccalabrese/SQL-and-Postgre-to-detect-fraud/blob/3147a22460f9f06c5536a5fa1a570b412c034e70/Images/Screenshot%202024-02-09%20at%203.09.50%E2%80%AFPM.png)

What difference do you observe between the consumption patterns? Does the difference suggest a fraudulent transaction? Explain your rationale in the markdown report.

*Cardholder 2 is making many small daily transactions with their card, while cardholder 18 has infrequent large transactions that break the normal spending pattern through the year. This may be cause for concern that these transactions could be fraudulent.*

### Cardholder 25 outlier transactions:

![image](https://github.com/Mccalabrese/SQL-and-Postgre-to-detect-fraud/blob/3147a22460f9f06c5536a5fa1a570b412c034e70/Images/Screenshot%202024-02-09%20at%203.09.35%E2%80%AFPM.png)

Are there any outliers for cardholder ID 25? How many outliers are there per month? Do you notice any anomalies? Describe your observations and conclusions.

*There are certainly 9 outlier transactions in every month of the first semester of 2018 with the exception of febuary. These anomalous transactions repeat more frequently as time goes on, as seen in the above box plot. There are approximatly 1.5 outliers per month, however these start infrequently and increase with time. Cardholder 25 may have been hacked.*

### Transactions under $2 by card:

Is there any evidence to suggest that a credit card has been hacked? Explain your rationale.

*While a large number of small transactions may be a suggestion of potential fraud I do not believe it is strong evidence.*

### Transactions between 7am and 9am:

Do you see any anomalous transactions that could be fraudulent?

*There are 8 transactions over $1000 that may warrent attention.*

If you answered yes to the previous question, explain why you think there might be fraudulent transactions during this time frame.

*Because these transactions are very large and occuring during a suspect timeframe, I believe they may warrant verification.*

### Small transactions by merchant:

What are the top 5 merchants prone to being hacked using small transactions?

*The top 5 marchants are Wood-Ramirez, Hood-Philips, Baker Inc, Clark and Sons, and Greene-Wood.*

