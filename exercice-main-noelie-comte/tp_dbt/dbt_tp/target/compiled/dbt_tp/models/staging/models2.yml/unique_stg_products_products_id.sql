
    
    

select
    products_id as unique_field,
    count(*) as n_records

from "postgres"."public"."stg_products"
where products_id is not null
group by products_id
having count(*) > 1


