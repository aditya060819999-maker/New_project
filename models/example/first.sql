{{ config(
    materialized='table',
    transient=true
) }}

select * from {{ source('src', 'cust') }}
limit 2
