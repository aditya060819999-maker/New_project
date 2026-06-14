{%- set mycolumns = dbt_utils.get_column_values(table=source('src', 'sls'), column='payemtnt_mode') %}
select order_id , 
{%for  i in  mycolumns%}
sum(case when payemtnt_mode = '{{i}}' then sales end ) as {{i}}_amount{% if not loop.last %} , {% endif %}
{% endfor %}
from {{source('src', 'sls')}}
group by 1