

select s.sale_date, p.category ,sum(s.quantity*p.price) as daily_revenue
from "postgres"."public"."stg_sales" as s
inner join "postgres"."public"."stg_products" as p on s.product_id = p.product_id
group by s.sale_date, p.category