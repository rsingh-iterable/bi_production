view: all_customers {
  sql_table_name: "DBT_RIYA"."ALL_CUSTOMERS"
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME" ;;
  }

  dimension_group: churn {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."CHURN_DATE" ;;
  }

  dimension_group: max_end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."MAX_END_DATE" ;;
  }

  dimension_group: min_start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."MIN_START_DATE" ;;
  }

  dimension: org_id {
    type: string
    sql: ${TABLE}."ORG_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: [account_name]
  }
}
