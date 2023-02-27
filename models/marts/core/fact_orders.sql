select cus.customer_id, 
orderid, 
amount 
from {{     ref(    'stg_payments')}} pay
left join {{    ref(    'stg_customers')}} cus 
on pay.customer_id = cus.customer_id