{{ config(materialized='table') }}

select s.sale_date, p.category ,sum(s.quantity*p.price) as daily_revenue
from {{ ref('stg_sales') }} as s
inner join {{ ref('stg_products') }} as p on s.product_id = p.product_id
group by s.sale_date, p.category
