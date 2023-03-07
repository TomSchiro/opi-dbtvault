{% macro evaluate_datatype(column_name,column_alias) -%}

{% set return_value = column_name %}

{% if "_DT" == column_alias[-3:].upper() -%}
    {% set return_value = "CAST(" ~ column_name ~ " AS date)" %}
{% elif "_AMT" == column_alias[-4:].upper() -%}
    {% set return_value = "CAST(" ~ column_name ~ " AS decimal(10,2))" %}
{% elif "_STR" == column_alias[-4:].upper() -%}
    {% set return_value = "CAST(" ~ column_name ~ " AS VARCHAR)" %}
{% elif "_VAR" == column_alias[-4:].upper() -%}
    {% set return_value = "CAST(" ~ column_name ~ " AS VARIANT)" %}
{% elif "_BOOL" == column_alias[-5:].upper() -%}
    {% set return_value = "CAST(" ~ column_name ~ " AS BOOLEAN)" %}
{% elif "_TS" == column_alias[-3:].upper() -%}
    {% set return_value = "CAST(" ~ column_name ~ " AS TIMESTAMP)" %}
{% elif "_GEO" == column_alias[-4:].upper() -%}
    {% set return_value = "CAST(" ~ column_name ~ "  AS GEOGRAPHY)" %}
{% elif "_GEOM" == column_alias[-5:].upper() -%}
    {% set return_value = "CAST(" ~ column_name ~ " AS GEOMETRY)" %}
{% elif "_TM" == column_alias[-3:].upper() -%}
    {% set return_value = "CAST(" ~ column_name ~ " AS TIME)" %}
{% elif "_BIN" == column_alias[-3:].upper() -%}
    {% set return_value = "CAST(" ~ column_name ~ " AS BINARY)" %}
{% endif -%}


{{return(return_value)}}
{%- endmacro %}

