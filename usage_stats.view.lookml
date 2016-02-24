- view: usage_stats
  fields:

  - measure: android
    type: sum
    value_format_name: id
    sql: ${TABLE}.android

  - dimension_group: date
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.date

  - measure: ios
    type: sum
    sql: ${TABLE}.ios
    html: |
      {% if value < 20000 %}
        <b><p style="color: white; background-color: #dc7350; font-size:100%; text-align:center; margin: 0; border-radius: 5px;">{{ rendered_value }}</p></b>
      {% elsif value < 30000 %}
        <b><p style="color: black; background-color: #e9b404; font-size:100%; text-align:center; margin: 0; border-radius: 5px;">{{ rendered_value }}</p></b>
      {% else %}
        <b><p style="color: white; background-color: #49cec1; font-size:100%; text-align:center; margin: 0; border-radius: 5px;">{{ rendered_value }}</p></b>
      {% endif %}

  - dimension: stat_type
    type: string
    sql: ${TABLE}.stat_type

  - measure: count
    type: count
    drill_fields: []

