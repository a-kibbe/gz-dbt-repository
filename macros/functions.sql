{% macro margin_percent(revenue, purchase_cost, dp=2) %}
    
    ROUND(SAFE_DIVIDE((revenue - purchase_cost), revenue), {{ dp }})

{% endmacro %}