- view: user_retention
  fields:

  - dimension_group: start
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.start_date

  - dimension: users
    type: number
    sql: ${TABLE}.users

  - dimension: weeks_since_start
    type: number
    sql: ${TABLE}.weeks_since_start

  - measure: count
    type: count
    drill_fields: []

