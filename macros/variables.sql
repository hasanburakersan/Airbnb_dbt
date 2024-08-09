{% macro learn_variables() %}
  {% set name_ = "Burak" %}
  {{ log("Hello " + name_, info=True) }}

  {# Correct way to access the variable passed via --vars #}
  {{ log("Hello dbt user " + var('user_name'), info=True) }}

{% endmacro %}
