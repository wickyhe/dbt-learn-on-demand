select 
year(created_at) as sale_year,
to_number(sum(amount),38,2)  as total_revenue

from {{ ref( 'stg_payments')}}
where lower(status)='success'
group by sale_year