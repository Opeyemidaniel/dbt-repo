select id as customer_id
,orderid
,paymentmethod
,status
,amount
,created
from `dbt-tutorial.stripe.payment`