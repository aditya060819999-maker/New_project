{{% set mycolumns = dbt_utils.get_column_values(
source(
    "src",
    "sls"
)
"payment_mode"
)

%}}