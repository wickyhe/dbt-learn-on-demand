select 
id as payment_id,
orderid as order_id,
paymentmethod as payment_method,
status,
amount/1000 as amount,
created as created_at

from HEW_POC.PAYMENT