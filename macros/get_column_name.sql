{% macro get_column_name(table_name) -%}


{% set get_column_name_query -%}
select
COLUMN_NAME,
COLUMN_ALIAS
FROM BRONZE.LANDING.DATA_CATALOG
WHERE TABLE_NAME = {{'table_name'}};
{% endset -%}

{% set results = run_query(get_column_name_query) -%}

{% if execute %}

{% set column_name =  results.columns[0].values() %}
{% set column_alias =  results.columns[1].values() %}


{% for i in  range(column_name|length) -%}
{{evaluate_datatype(column_name[i],column_alias[i])}}  AS {{column_alias[i]}}{% if not loop.last %},{% endif %}
{% endfor -%}

{% endif -%}

{%- endmacro -%}