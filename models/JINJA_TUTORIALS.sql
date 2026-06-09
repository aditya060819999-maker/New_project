{{"string"}}

{{1224242}}

{{['adotya' , 'Lokehsh']}}



--declare the variable 

{%- set mystring  = "aditya" -%}
{%- set mystring1  = 123434 -%}
{%- set mystring2  = { "name" : "sahil" , "role": "DR"}-%}
{%- set mystring3 = "aditya" -%}

--see variables 
{{mystring}}
{%- set mystring3 = [1,3,4,5,6,"ready"] -%}

--comets int he JInjs 
{# comments #}
{# conditional logic  #}

{% if  1 == 10  %}
{{"i am insde the if condition "}}
{% elif 10 == 9%}
{{"this is elif "}}
{% else %}
{{"i am insde the else  condition "}}
{% endif %}

-- for loop 
{%- for n in [1,2,3,4,5,67,7,78,78,8,8,88 ]%} --single hyphen 
{{n}}
{%endfor%}

--other way to se the variable 

{%- set my_variabel  = [1,2,23,3,3,3,3,3,4]%} no -- hyphen  noe separator
{{my_variabel}}



{%- for n in my_variabel %} --single hyphen 
{{n}}
{%endfor%}

{{invocation_id}} -- dbt created this

--Utils functions 
-- LIBS are cal packages 
{{ dbt_utils.get_column_values(table=source('src', 'ORDERS'), column='order_datetime') }}




