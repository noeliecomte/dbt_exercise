select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select products_id
from "postgres"."public"."stg_products"
where products_id is null



      
    ) dbt_internal_test