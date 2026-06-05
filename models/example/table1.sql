{{config (materialized =  'table')}}
select * from {{source ( "all_my_data_sources","CUSTOMER" )}}