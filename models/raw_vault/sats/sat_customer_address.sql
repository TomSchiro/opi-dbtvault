{%- set source_model = "v_stg_customer_info" -%}
{%- set src_pk = "LINK_CUSTOMER_ADDRESS_PK" -%}
{%- set src_hashdiff = "CUSTOMER_ADDRESS_HASHDIFF" -%}
{%- set src_payload = ["CA_STREET_NUMBER", "CA_STREET_TYPE", "CA_SUITE_NUMBER", "CA_CITY", "CA_COUNTY", "CA_STATE", "CA_COUNTRY"] -%}
{%- set src_eff = "EFFECTIVE_FROM" -%}
{%- set src_ldts = "LOAD_DATE" -%}
{%- set src_source = "RECORD_SOURCE" -%}
 
{{ dbtvault.sat(src_pk=src_pk, src_hashdiff=src_hashdiff,
                src_payload=src_payload, src_eff=src_eff,
                src_ldts=src_ldts, src_source=src_source,
                source_model=source_model) }}