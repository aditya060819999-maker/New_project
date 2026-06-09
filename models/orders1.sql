select order_id, 
sum(case when payment_mode = "cash" then sales end ) as cash_payment ,
sum(case when payment_mode = "UPI" then sales end ) as cash_payment ,
sum(case when payment_mode = "card" then sales end ) as cash_payment ,
sum(case when payment_mode = "Ecs" then sales end ) as cash_payment ,
sum(sales) as total
from {{source("src" , "sls")}}
group by 1 ;

{{% set column = dbt_utils.default__get_column_values(source("src" , "sls") , "payment_mode") %}}

