with customers as (
select 
  id as customer_id,
  first_name,
  last_name
  
 from hew_poc.customers
)
select * from customers