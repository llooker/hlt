- view: app_store_stars
  fields:

  - dimension: app_name
    type: string
    sql: ${TABLE}.app_name

  - dimension_group: last_updated
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.last_updated

  - measure: 1_star
    type: sum
    sql: ${TABLE}.star1

  - measure: 2_star
    type: sum
    sql: ${TABLE}.star2

  - measure: 3_star
    type: sum
    sql: ${TABLE}.star3

  - measure: 4_star
    type: sum
    sql: ${TABLE}.star4

  - measure: 5_star
    type: sum
    sql: ${TABLE}.star5

  - dimension: store
    type: string
    sql: ${TABLE}.store

  - measure: count
    type: count
    drill_fields: [app_name]

