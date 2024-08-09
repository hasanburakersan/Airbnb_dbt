{% macro learn_logging() %}
  {{ log("This is an error",info=True)}}
{% endmacro %}