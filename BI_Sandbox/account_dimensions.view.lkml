view: account_dimensions {
  sql_table_name: "DBT_RIYA"."ACCOUNT_DIMENSIONS"
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
    primary_key: yes
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME" ;;
  }

  measure: contains_b2_b {
    type: sum
    sql: ${TABLE}."CONTAINS_B2B" ;;
  }

  measure: contains_b2_c {
    type: sum
    sql: ${TABLE}."CONTAINS_B2C" ;;
  }

  measure: contains_educ {
    type: sum
    sql: ${TABLE}."CONTAINS_EDUC" ;;
  }

  measure: contains_finance {
    type: sum
    sql: ${TABLE}."CONTAINS_FINANCE" ;;
  }

  measure: contains_food {
    type: sum
    sql: ${TABLE}."CONTAINS_FOOD" ;;
  }

  measure: contains_marketing_ads {
    type: sum
    sql: ${TABLE}."CONTAINS_MARKETING_ADS" ;;
  }

  measure: contains_media_sports {
    type: sum
    sql: ${TABLE}."CONTAINS_MEDIA_SPORTS" ;;
  }

  measure: contains_mobile {
    type: sum
    sql: ${TABLE}."CONTAINS_MOBILE" ;;
  }

  measure: contains_retail_apparel {
    type: sum
    sql: ${TABLE}."CONTAINS_RETAIL_APPAREL" ;;
  }

  measure: contains_retail_ecom {
    type: sum
    sql: ${TABLE}."CONTAINS_RETAIL_ECOM" ;;
  }

  measure: contains_software {
    type: sum
    sql: ${TABLE}."CONTAINS_SOFTWARE" ;;
  }

  measure: contains_travel_hosp {
    type: sum
    sql: ${TABLE}."CONTAINS_TRAVEL_HOSP" ;;
  }

  measure: contains_wellness {
    type: sum
    sql: ${TABLE}."CONTAINS_WELLNESS" ;;
  }

  dimension: cs_market_segment {
    type: string
    sql: ${TABLE}."CS_MARKET_SEGMENT" ;;
  }

  dimension: dfox_lists_c {
    type: string
    sql: ${TABLE}."DFOX_LISTS_C" ;;
  }

  measure: email_month_mod {
    type: sum
    sql: ${TABLE}."EMAIL_MONTH_MOD" ;;
  }

  dimension_group: first_active {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
      fiscal_quarter_of_year,
      fiscal_quarter
    ]
    convert_tz: yes
    datatype: date
    sql: ${TABLE}."FIRST_ACTIVE_AT" ;;
  }

  dimension_group: first_churn {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
      fiscal_quarter_of_year,
      fiscal_quarter
    ]
    convert_tz: yes
    datatype: date
    sql: ${TABLE}."FIRST_CHURN_AT" ;;
  }

  measure: implementation_cost {
    type: sum
    sql: ${TABLE}."IMPLEMENTATION_COST" ;;
  }

  measure: implementation_duration_days {
    type: sum
    sql: ${TABLE}."IMPLEMENTATION_DURATION_DAYS" ;;
  }

  dimension_group: implementation_end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
      fiscal_quarter_of_year,
      fiscal_quarter
    ]
    convert_tz: yes
    datatype: date
    sql: ${TABLE}."IMPLEMENTATION_END_DATE" ;;
  }

  dimension: implementation_package_c {
    type: string
    sql: ${TABLE}."IMPLEMENTATION_PACKAGE_C" ;;
  }

  dimension_group: implementation_start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
      fiscal_quarter_of_year,
      fiscal_quarter
    ]
    convert_tz: yes
    datatype: date
    sql: ${TABLE}."IMPLEMENTATION_START_DATE" ;;
  }

  dimension: industry_mod {
    type: string
    sql: ${TABLE}."INDUSTRY_MOD" ;;
  }

  dimension: market_segment_of_owner {
    type: string
    sql: ${TABLE}."MARKET_SEGMENT_OF_OWNER" ;;
  }

  measure: num_amplitude {
    type: sum
    sql: ${TABLE}."NUM_AMPLITUDE" ;;
  }

  measure: num_award {
    type: sum
    sql: ${TABLE}."NUM_AWARD" ;;
  }

  measure: num_bigdata {
    type: sum
    sql: ${TABLE}."NUM_BIGDATA" ;;
  }

  measure: num_competitors {
    type: sum
    sql: ${TABLE}."NUM_COMPETITORS" ;;
  }

  measure: num_conferences {
    type: sum
    sql: ${TABLE}."NUM_CONFERENCES" ;;
  }

  measure: num_employees_mod {
    type: sum
    sql: ${TABLE}."NUM_EMPLOYEES_MOD" ;;
  }

  measure: num_funding {
    type: sum
    sql: ${TABLE}."NUM_FUNDING" ;;
  }

  measure: num_growthsignals {
    type: sum
    sql: ${TABLE}."NUM_GROWTHSIGNALS" ;;
  }

  measure: num_heap {
    type: sum
    sql: ${TABLE}."NUM_HEAP" ;;
  }

  measure: num_martech {
    type: sum
    sql: ${TABLE}."NUM_MARTECH" ;;
  }

  measure: num_mixpanel {
    type: sum
    sql: ${TABLE}."NUM_MIXPANEL" ;;
  }

  measure: num_mobile {
    type: sum
    sql: ${TABLE}."NUM_MOBILE" ;;
  }

  measure: num_segment {
    type: sum
    sql: ${TABLE}."NUM_SEGMENT" ;;
  }

  measure: num_shopify {
    type: sum
    sql: ${TABLE}."NUM_SHOPIFY" ;;
  }

  measure: num_technologies {
    type: sum
    sql: ${TABLE}."NUM_TECHNOLOGIES" ;;
  }

  dimension: org_id {
    type: string
    sql: ${TABLE}."ORG_ID" ;;
  }

  dimension: owner_role_account {
    type: string
    sql: ${TABLE}."OWNER_ROLE_ACCOUNT" ;;
  }

  dimension: owner_role_new_opp {
    type: string
    sql: ${TABLE}."OWNER_ROLE_NEW_OPP" ;;
  }

  dimension: owner_role_renewal {
    type: string
    sql: ${TABLE}."OWNER_ROLE_RENEWAL" ;;
  }

  measure: predicted_deal_size_c {
    type: sum
    sql: ${TABLE}."PREDICTED_DEAL_SIZE_C" ;;
  }

  dimension: region_bi_mod {
    type: string
    sql: ${TABLE}."REGION_BI_MOD" ;;
  }

  dimension: region_of_owner {
    type: string
    sql: ${TABLE}."REGION_OF_OWNER" ;;
  }

  dimension: sales_market_segment {
    type: string
    sql: ${TABLE}."SALES_MARKET_SEGMENT" ;;
  }

  dimension: MARKET_SEGMENT_OF_ACCOUNT {
    type: string
    sql: ${TABLE}."MARKET_SEGMENT_OF_ACCOUNT" ;;
  }


  dimension: sub_industry_mod {
    type: string
    sql: ${TABLE}."SUB_INDUSTRY_MOD" ;;
  }

  measure: count {
    type: count
    sql_distinct_key: ${account_id} ;;
    label: "# of Accounts"
    drill_fields: [account_name]
  }

  measure: count_renewal {
    type: count
    sql_distinct_key: ${account_id} ;;
    filters: {
      field: account_changes_monthly.renewal_month
      value: "1"
    }
    label: "# Renewal Accounts"
    drill_fields: [account_name]
  }

  measure: count_churn {
    type: count
    sql_distinct_key: ${account_id} ;;
    filters: {
      field: account_changes_monthly.churn_month
      value: "1"
    }
    label: "# Churned Accounts"
    drill_fields: [account_name]
  }
}
