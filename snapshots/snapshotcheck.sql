{% snapshot customers_change_control_chck %}

{{
    config(
         unique_key="cust_id",
         strategy="check",
         check_cols = ['name', 'address' , 'city' , 'tier'],   -- or all 
         target_database = 'DEMO_DATABASE',
         target_schema = 'DBT_AADITYA'
    )
}}

select * from {{ source('src', 'cust') }}

{% endsnapshot %}
