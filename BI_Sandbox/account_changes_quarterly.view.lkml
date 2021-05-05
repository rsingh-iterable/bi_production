view: account_changes_quarterly {
  sql_table_name: "FT_TRANSFORMATION"."ACCOUNT_CHANGES_QUARTERLY"
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME" ;;
  }

  measure: c_mrr_end {
    type: sum
    sql: ${TABLE}."C_MRR_END" ;;
  }

  measure: c_arr_end {
    type: sum
    sql: ${TABLE}."C_MRR_END" * 12 ;;
  }


  measure: c_mrr_start {
    type: sum
    sql: ${TABLE}."C_MRR_START" ;;
  }

  measure: c_arr_start {
    type: sum
    sql: ${TABLE}."C_MRR_START" * 12 ;;
  }

  measure: catalog_o_mrr {
    type: sum
    sql: ${TABLE}."CATALOG_O_MRR" ;;
  }

  measure: churn_mrr {
    type: sum
    sql: ${TABLE}."CHURN_MRR" ;;
  }

  measure: churn_arr {
    type: sum
    sql: ${TABLE}."CHURN_MRR" * 12 ;;
  }

  measure: deliverability_o_mrr {
    type: sum
    sql: ${TABLE}."DELIVERABILITY_O_MRR" ;;
  }

  measure: downgrade_mrr {
    type: sum
    sql: ${TABLE}."DOWNGRADE_MRR" ;;
  }

  measure: downgrade_arr {
    type: sum
    sql: ${TABLE}."DOWNGRADE_MRR" * 12 ;;
  }

  measure: email_o_mrr {
    type: sum
    sql: ${TABLE}."EMAIL_O_MRR" ;;
  }

  dimension_group: first_day_of_quarter {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
      fiscal_quarter_of_year,
      fiscal_quarter,
      fiscal_year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."FIRST_DAY_OF_QUARTER" ;;
  }

  dimension: fiscal_yearquarter {
    type: string
    sql: ${TABLE}."FISCAL_YEARQUARTER" ;;
  }

  dimension_group: last_day_of_quarter {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
      fiscal_quarter,
      fiscal_quarter_of_year,
      fiscal_year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."LAST_DAY_OF_QUARTER" ;;
  }

  measure: nl_mrr {
    type: sum
    sql: ${TABLE}."NL_MRR" ;;
  }

  measure: nl_arr {
    type: sum
    sql: ${TABLE}."NL_MRR" * 12 ;;
  }

  measure: o_mrr {
    type: sum
    sql: ${TABLE}."O_MRR" ;;
  }

  measure: o_arr {
    type: sum
    sql: ${TABLE}."O_MRR" * 12 ;;
  }

  dimension: org_id {
    type: string
    sql: ${TABLE}."ORG_ID" ;;
  }

  measure: reseller_o_mrr {
    type: sum
    sql: ${TABLE}."RESELLER_O_MRR" ;;
  }

  dimension: rnk {
    type: number
    sql: ${TABLE}."RNK" ;;
  }

  measure: signals_o_mrr {
    type: sum
    sql: ${TABLE}."SIGNALS_O_MRR" ;;
  }

  measure: sms_o_mrr {
    type: sum
    sql: ${TABLE}."SMS_O_MRR" ;;
  }

  measure: support_o_mrr {
    type: sum
    sql: ${TABLE}."SUPPORT_O_MRR" ;;
  }

  measure: upgrade_mrr {
    type: sum
    sql: ${TABLE}."UPGRADE_MRR" ;;
  }

  measure: upgrade_arr {
    type: sum
    sql: ${TABLE}."UPGRADE_MRR" * 12 ;;
  }

  measure: count {
    type: count
    drill_fields: [account_name]
  }
}
