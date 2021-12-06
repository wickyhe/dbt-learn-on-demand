select 
{{dbt_utils.surrogate_key(['customer_id','order_id'])}} as id,
customer_id,
order_date,
count(*) as cnt
from {{ ref('stg_orders')}}
group by 1,2,3