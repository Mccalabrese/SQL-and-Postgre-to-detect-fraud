-- Data Analysis Pt 1
--Isolate Transactions of each cardholder:
CREATE VIEW isolated_cardholders AS
select t.card
, count(*) as number_of_transactions
, avg(t.amount) as average_transaction_amount
, min(t.amount) as minimum_transaction_amount
, max(t.amount) as maximum_transaction_amount
from transaction t
group by t.card;


-- Count the transactions that are less than $2.00.

CREATE VIEW small_tx AS
select t.card,
       count(*) as number_of_transactions
from transaction t
inner join (
  select id, count(*) as num_transactions
  from transaction
  where amount < 2
  group by id
) as t2 on t.id = t2.id
group by t.card
order by number_of_transactions desc;




-- What are the top 100 highest transactions made between 7:00 am and 9:00 am?
CREATE VIEW highest_tx_7_to_9 AS
SELECT *
FROM transaction t
WHERE EXTRACT(HOUR FROM t.date) BETWEEN 7 AND 9
AND EXTRACT(MINUTE FROM t.date) BETWEEN 0 AND 59
ORDER BY amount DESC
LIMIT 100;


-- What are the top 5 merchants prone to being hacked using small transactions?

CREATE VIEW top_merchants AS
SELECT transaction.id_merchant, COUNT(*) AS transaction_count
FROM transaction
WHERE amount < 2.00
GROUP BY id_merchant
ORDER BY transaction_count DESC
LIMIT 5;



