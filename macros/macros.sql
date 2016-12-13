
{% macro audit(this) %}

    insert into {{ ref('audit') }} (

        run_started_at, model, invocation_id, timestamp, status

    ) values (

        '{{ run_started_at}}', '{{this.name}}',  '{{ invocation_id }}', now(), 'done'

    )

{% endmacro %}
