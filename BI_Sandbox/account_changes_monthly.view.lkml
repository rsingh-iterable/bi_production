view: account_changes_monthly {
  sql_table_name: "DBT_RIYA"."ACCOUNT_CHANGES_MONTHLY"
    ;;

  dimension: account_name {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME" ;;
  }

  measure: addons_o_mrr_end {
    type: sum
    sql: ${TABLE}."ADDONS_O_MRR_END" ;;
    label: "ADDONS_O_MRR_END"
    value_format: "$#.00;($#.00)"
  }

  measure: addons_o_arr_end {
    type: sum
    sql: ${TABLE}."ADDONS_O_MRR_END" * 12 ;;
    label: "ADDONS_O_ARR_END"
    group_label: "AddOns Overages"
    value_format: "$#.00;($#.00)"
  }

  measure: addons_o_mrr_start {
    type: sum
    sql: ${TABLE}."ADDONS_O_MRR_START" ;;
    label: "ADDONS_O_MRR_START"
    value_format: "$#.00;($#.00)"
  }

  measure: addons_o_arr_start {
    type: sum
    sql: ${TABLE}."ADDONS_O_MRR_START" *12 ;;
    label: "ADDONS_O_ARR_START"
    group_label: "AddOns Overages"
    value_format: "$#.00;($#.00)"
  }


  measure: base_o_mrr_end {
    type: sum
    sql: ${TABLE}."BASE_O_MRR_END" ;;
    label: "BASE_O_MRR_END"
    value_format: "$#.00;($#.00)"
  }

  measure: base_o_mrr_start {
    type: sum
    sql: ${TABLE}."BASE_O_MRR_START" ;;
    label: "BASE_O_MRR_START"
    value_format: "$#.00;($#.00)"
  }

  measure: c_mrr_end {
    type: sum
    sql: ${TABLE}."C_MRR_END" ;;
    label: "C_MRR_END"
    drill_fields: [sfdc_account_id,account_name,start_period_date,c_mrr_start,c_mrr_end]
    value_format: "$#,##0"
  }

  measure: c_arr_end {
    type: sum
    sql: ${TABLE}."C_MRR_END" * 12 ;;
    label: "C_ARR_END"
    drill_fields: [sfdc_account_id,account_name,start_period_date,c_mrr_start,c_mrr_end]
    group_label: "Commited Revenue"
    value_format: "$#,##0"
  }

  measure: c_mrr_start {
    type: sum
    sql: ${TABLE}."C_MRR_START" ;;
    label: "C_MRR_START"
    value_format: "$#.00;($#.00)"
  }

  measure: c_arr_start {
    type: sum
    sql: ${TABLE}."C_MRR_START" * 12 ;;
    label: "C_ARR_START"
    drill_fields: [sfdc_account_id,account_name,start_period_date,c_arr_start,c_arr_end]
    group_label: "Commited Revenue"
    value_format: "$#.00;($#.00)"
  }

  measure: catalog_o_mrr_end {
    type: sum
    sql: ${TABLE}."CATALOG_O_MRR_END" ;;
    label: "CATALOG_O_MRR_END"
    value_format: "$#.00;($#.00)"
  }

  measure: catalog_o_mrr_start {
    type: sum
    sql: ${TABLE}."CATALOG_O_MRR_START" ;;
    label: "CATALOG_O_MRR_START"
    value_format: "$#.00;($#.00)"
  }

  measure: churn_month {
    type: sum
    sql: ${TABLE}."CHURN_MONTH" ;;
    label: "CHURN_MONTH"
  }

  measure: churn_mrr {
    type: sum
    sql: ${TABLE}."CHURN_MRR"  ;;
    label: "CHURN_MRR"
    group_label: "Churn"
    value_format: "$#,##0"
  }

  measure: churn_arr {
    type: sum
    sql: ${TABLE}."CHURN_MRR" * 12  ;;
    label: "CHURN_ARR"
    drill_fields: [sfdc_account_id,account_name,start_period_date,c_arr_start,c_arr_end]
    group_label: "Churn"
    value_format: "$#,##0"
  }

  measure: deliverability_o_mrr_end {
    type: sum
    sql: ${TABLE}."DELIVERABILITY_O_MRR_END" ;;
    label: "DELIVERABILITY_O_MRR_END"
  }

  measure: deliverability_o_mrr_start {
    type: sum
    sql: ${TABLE}."DELIVERABILITY_O_MRR_START" ;;
    label: "DELIVERABILITY_O_MRR_START"
  }

  measure: downgrade_mrr {
    type: sum
    sql: ${TABLE}."DOWNGRADE_MRR" ;;
    label: "DOWNGRADE_MRR"
    group_label: "Downgrades"
    value_format: "$#,##0"
  }

  measure: downgrade_arr {
    type: sum
    sql: ${TABLE}."DOWNGRADE_MRR" * 12 ;;
    label: "DOWNGRADE_ARR"
    group_label: "Downgrades"
    value_format: "$#,##0"
  }

  measure: email_o_mrr_end {
    type: sum
    sql: ${TABLE}."EMAIL_O_MRR_END" ;;
    label: "EMAIL_O_MRR_END"
    value_format: "$#.00;($#.00)"
  }

  measure: email_o_mrr_start {
    type: sum
    sql: ${TABLE}."EMAIL_O_MRR_START" ;;
    label: "EMAIL_O_MRR_START"
    value_format: "$#.00;($#.00)"
  }

  dimension_group: end_period {
    type: time
    timeframes: [
      raw,
      date,
      week,
      fiscal_month_num,
      fiscal_quarter,
      fiscal_quarter_of_year,
      fiscal_year,
      month_name
    ]
    convert_tz: yes
    datatype: date
    sql: ${TABLE}."END_PERIOD" ;;
    label: "END_PERIOD"
  }

  measure: iterable_org_id {
    type: string
    sql: ${TABLE}."ITERABLE_ORG_ID" ;;
    label: "ITERABLE_ORG_ID"
  }



  measure: nl_mrr {
    type: sum
    sql: ${TABLE}."NL_MRR" ;;
    label: "NL_MRR"
    group_label: "New Lands"
  }

  measure: nl_arr {
    type: sum
    sql: ${TABLE}."NL_MRR"  * 12 ;;
    label: "NL_ARR"
    drill_fields: [sfdc_account_id,account_name,start_period_date,c_arr_start,c_arr_end]
    group_label: "New Lands"
    value_format: "$#,##0"
  }

  measure: o_mrr_end {
    type: sum
    sql: ${TABLE}."O_MRR_END" ;;
    label: "O_MRR_END"
    value_format: "$#,##0"
    group_label: "Overages"
  }

  measure: o_arr_end {
    type: sum
    sql: ${TABLE}."O_MRR_END" * 12 ;;
    label: "O_ARR_END"
    value_format: "$#,##0"
    group_label: "Overages"
  }

  measure: o_mrr_start {
    type: sum
    sql: ${TABLE}."O_MRR_START" ;;
    label: "O_MRR_START"
    value_format: "$#,##0"
    group_label: "Overages"
  }

  measure: o_arr_start {
    type: sum
    sql: ${TABLE}."O_MRR_START"  * 12 ;;
    label: "O_ARR_START"
    value_format: "$#,##0"
    group_label: "Overages"
  }

  dimension_group: opp_end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      fiscal_month_num,
      fiscal_quarter,
      fiscal_quarter_of_year,
      fiscal_year,
      month_name
    ]
    convert_tz: yes
    datatype: date
    sql: ${TABLE}."OPP_END_DATE" ;;
    label: "OPP_END_DATE"
  }

  dimension: opp_id {
    type: string
    sql: ${TABLE}."OPP_ID" ;;
    label: "OPP_ID"
  }

  dimension_group: opp_start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      fiscal_month_num,
      fiscal_quarter,
      fiscal_quarter_of_year,
      fiscal_year
    ]
    convert_tz: yes
    datatype: date
    sql: ${TABLE}."OPP_START_DATE" ;;
    label: "OPP_START_DATE"
  }

  measure: renewal_month {
    type: sum
    sql: ${TABLE}."RENEWAL_MONTH" ;;
    label: "RENEWAL_MONTH"
  }

  measure: reseller_o_mrr_end {
    type: sum
    sql: ${TABLE}."RESELLER_O_MRR_END" ;;
    label: "RESELLER_O_MRR_END"
    value_format: "$#.00;($#.00)"
  }

  measure: reseller_o_mrr_start {
    type: sum
    sql: ${TABLE}."RESELLER_O_MRR_START" ;;
    label: "RESELLER_O_MRR_START"
    value_format: "$#.00;($#.00)"
  }

  measure: rnk {
    type: sum
    sql: ${TABLE}."RNK" ;;
    label: "Rank"
  }

  dimension: sfdc_account_id {
    type: string
    sql: ${TABLE}."SFDC_ACCOUNT_ID" ;;
    label: "SFDC_ACCOUNT_ID"
  }

  measure: signals_o_mrr_end {
    type: sum
    sql: ${TABLE}."SIGNALS_O_MRR_END" ;;
    label: "SIGNALS_O_MRR_END"
    value_format: "$#.00;($#.00)"
  }

  measure: signals_o_mrr_start {
    type: sum
    sql: ${TABLE}."SIGNALS_O_MRR_START" ;;
    label: "SIGNALS_O_MRR_START"
  }

  measure: sms_o_mrr_end {
    type: sum
    sql: ${TABLE}."SMS_O_MRR_END" ;;
    label: "SMS_O_MRR_END"
    value_format: "$#.00;($#.00)"
  }

  measure: sms_o_mrr_start {
    type: sum
    sql: ${TABLE}."SMS_O_MRR_START" ;;
    label: "SMS_O_MRR_START"
    value_format: "$#.00;($#.00)"

  }

  dimension_group: start_period {
    type: time
    timeframes: [
      raw,
      date,
      week,
      fiscal_month_num,
      fiscal_quarter,
      fiscal_quarter_of_year,
      fiscal_year,
      month_name
    ]
    convert_tz: yes
    datatype: date
    sql: ${TABLE}."START_PERIOD" ;;
    label: "START_PERIOD"
  }

  measure: support_o_mrr_end {
    type: sum
    sql: ${TABLE}."SUPPORT_O_MRR_END" ;;
    label: "SUPPORT_O_MRR_END"
  }

  measure: support_o_mrr_start {
    type: sum
    sql: ${TABLE}."SUPPORT_O_MRR_START" ;;
    label: "SUPPORT_O_MRR_START"
  }

  measure: t_mrr_end {
    type: sum
    sql: ${TABLE}."T_MRR_END" ;;
    label: "T_MRR_END"
    value_format: "$#,##0"
  }

  measure: t_arr_end {
    type: number
    sql: ${t_mrr_end} * 12 ;;
    label: "T_ARR_END"
    value_format: "$#,##0"
  }

  measure: t_mrr_start {
    type: sum
    sql: ${TABLE}."T_MRR_START" ;;
    label: "T_MRR_START"
    value_format: "$#,##0"
  }

  measure: t_arr_start {
    type: number
    sql: ${t_mrr_start} * 12 ;;
    label: "T_ARR_START"
    value_format: "$#,##0"
  }

  measure: nn_mrr {
    type: number
    sql: ${nl_mrr} + ${upgrade_mrr} + ${downgrade_mrr} - ${churn_mrr}  ;;
    label: "NN_MRR"
    value_format: "$#,##0"
  }

  measure: nn_arr {
    type: number
    sql: ${nn_mrr} * 12 ;;
    label: "NN_ARR"
    value_format: "$#,##0"
    group_label: "Net New"
  }

  measure: upgrade_mrr {
    type: sum
    sql: ${TABLE}."UPGRADE_MRR" ;;
    label: "UPGRADE_MRR"
    group_label: "UPGRADES"
    value_format: "$#,##0"
  }

  measure: upgrade_arr {
    type: sum
    sql: ${TABLE}."UPGRADE_MRR" * 12;;
    label: "UPGRADE_ARR"
    group_label: "UPGRADES"
    drill_fields: [sfdc_account_id,account_name,start_period_date,c_arr_start,c_arr_end]
    value_format: "$#,##0"
  }

  measure: count {
    type: count
    drill_fields: [account_name]
  }
}
