{% snapshot customers_change_control %}

{{
    config(
         unique_key="cust_id",
         strategy="timestamp",
         updated_at="upadted_at",
         target_schema="snapshots"
    )
}}

select * from {{ source('src', 'cust') }}

{% endsnapshot %}
