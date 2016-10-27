{{ config(materialized="incremental", sql_where="FALSE") }}

select
'2016-01-01 00:00:00'::timestamp as "run_started_at",
'model_name'::varchar as "model",
'id'::varchar(32) as "invocation_id",
'2016-01-01 00:00:00'::timestamp as "timestamp",
'status'::varchar as status
limit 0
