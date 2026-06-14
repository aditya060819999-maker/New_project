{% macro myfunc(x) %}
    this is a reusable macro, with arguments: {{x}}
{% endmacro %}




select {{ myfunc(42) }}