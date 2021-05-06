view: src_sf_opportunty {
  sql_table_name: "DBT_RIYA"."SRC_SF_OPPORTUNTY"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ID" ;;
  }

  dimension: _fivetran_active {
    type: yesno
    sql: ${TABLE}."_FIVETRAN_ACTIVE" ;;
  }

  dimension_group: _fivetran_end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."_FIVETRAN_END" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: _fivetran_start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."_FIVETRAN_START" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: _fivetran_synced {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."_FIVETRAN_SYNCED" AS TIMESTAMP_NTZ) ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: account_plan_c {
    type: string
    sql: ${TABLE}."ACCOUNT_PLAN_C" ;;
  }

  dimension: active_evaluation_c {
    type: yesno
    sql: ${TABLE}."ACTIVE_EVALUATION_C" ;;
  }

  dimension: adjusted_plan_of_record_c {
    type: number
    sql: ${TABLE}."ADJUSTED_PLAN_OF_RECORD_C" ;;
  }

  dimension: adjusted_plan_of_record_catalog_c {
    type: number
    sql: ${TABLE}."ADJUSTED_PLAN_OF_RECORD_CATALOG_C" ;;
  }

  dimension: adjusted_plan_of_record_deliverability_c {
    type: number
    sql: ${TABLE}."ADJUSTED_PLAN_OF_RECORD_DELIVERABILITY_C" ;;
  }

  dimension: adjusted_plan_of_record_subscription_c {
    type: number
    sql: ${TABLE}."ADJUSTED_PLAN_OF_RECORD_SUBSCRIPTION_C" ;;
  }

  dimension: adjusted_plan_of_record_support_c {
    type: number
    sql: ${TABLE}."ADJUSTED_PLAN_OF_RECORD_SUPPORT_C" ;;
  }

  dimension: agency_creative_marketing_support_c {
    type: yesno
    sql: ${TABLE}."AGENCY_CREATIVE_MARKETING_SUPPORT_C" ;;
  }

  dimension: agency_tech_integration_support_c {
    type: yesno
    sql: ${TABLE}."AGENCY_TECH_INTEGRATION_SUPPORT_C" ;;
  }

  dimension: agenda_questions_c {
    type: string
    sql: ${TABLE}."AGENDA_QUESTIONS_C" ;;
  }

  dimension: allbound_id_c {
    type: string
    sql: ${TABLE}."ALLBOUND_ID_C" ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}."AMOUNT" ;;
  }

  dimension: anticipated_ip_infra_comments_c {
    type: string
    sql: ${TABLE}."ANTICIPATED_IP_INFRA_COMMENTS_C" ;;
  }

  dimension: anxiety_question_c {
    type: string
    sql: ${TABLE}."ANXIETY_QUESTION_C" ;;
  }

  dimension: approval_status_c {
    type: string
    sql: ${TABLE}."APPROVAL_STATUS_C" ;;
  }

  dimension: approved_by_sales_ops_c {
    type: yesno
    sql: ${TABLE}."APPROVED_BY_SALES_OPS_C" ;;
  }

  dimension: arr_at_stage_2_c {
    type: number
    sql: ${TABLE}."ARR_AT_STAGE_2_C" ;;
  }

  dimension: arr_at_stage_3_c {
    type: number
    sql: ${TABLE}."ARR_AT_STAGE_3_C" ;;
  }

  dimension: arr_at_stage_4_c {
    type: number
    sql: ${TABLE}."ARR_AT_STAGE_4_C" ;;
  }

  dimension: arr_at_stage_5_c {
    type: number
    sql: ${TABLE}."ARR_AT_STAGE_5_C" ;;
  }

  dimension_group: arr_recognition_month_c {
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
    sql: ${TABLE}."ARR_RECOGNITION_MONTH_C" ;;
  }

  dimension: assignment_12_1_c {
    type: string
    sql: ${TABLE}."ASSIGNMENT_12_1_C" ;;
  }

  dimension: attribution_c {
    type: string
    sql: ${TABLE}."ATTRIBUTION_C" ;;
  }

  dimension: auto_create_renewal_opp_c {
    type: yesno
    sql: ${TABLE}."AUTO_CREATE_RENEWAL_OPP_C" ;;
  }

  dimension: auto_renew_c {
    type: string
    sql: ${TABLE}."AUTO_RENEW_C" ;;
  }

  dimension: average_daily_email_sends_c {
    type: number
    sql: ${TABLE}."AVERAGE_DAILY_EMAIL_SENDS_C" ;;
  }

  dimension: baa_c {
    type: yesno
    sql: ${TABLE}."BAA_C" ;;
  }

  dimension: base_bookings_old_c {
    type: number
    sql: ${TABLE}."BASE_BOOKINGS_OLD_C" ;;
  }

  dimension: base_payment_schedule_c {
    type: string
    sql: ${TABLE}."BASE_PAYMENT_SCHEDULE_C" ;;
  }

  dimension: bd_opp_override_c {
    type: yesno
    sql: ${TABLE}."BD_OPP_OVERRIDE_C" ;;
  }

  dimension: benefits_c {
    type: string
    sql: ${TABLE}."BENEFITS_C" ;;
  }

  dimension: boost_up_url_c {
    type: string
    sql: ${TABLE}."BOOST_UP_URL_C" ;;
  }

  dimension: business_issue_c {
    type: string
    sql: ${TABLE}."BUSINESS_ISSUE_C" ;;
  }

  dimension: buying_timeline_confirm_c {
    type: yesno
    sql: ${TABLE}."BUYING_TIMELINE_CONFIRM_C" ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}."CAMPAIGN_ID" ;;
  }

  dimension: campaign_source_c {
    type: string
    sql: ${TABLE}."CAMPAIGN_SOURCE_C" ;;
  }

  dimension: case_study_terms_c {
    type: string
    sql: ${TABLE}."CASE_STUDY_TERMS_C" ;;
  }

  dimension: catalog_c {
    type: yesno
    sql: ${TABLE}."CATALOG_C" ;;
  }

  dimension: catalog_mrr_c {
    type: number
    sql: ${TABLE}."CATALOG_MRR_C" ;;
  }

  dimension: catalog_references_c {
    type: number
    sql: ${TABLE}."CATALOG_REFERENCES_C" ;;
  }

  dimension: cft_c {
    type: string
    sql: ${TABLE}."CFT_C" ;;
  }

  dimension: champion_dm_c {
    type: yesno
    sql: ${TABLE}."CHAMPION_DM_C" ;;
  }

  dimension: channels_c {
    type: string
    sql: ${TABLE}."CHANNELS_C" ;;
  }

  dimension: channels_details_c {
    type: string
    sql: ${TABLE}."CHANNELS_DETAILS_C" ;;
  }

  dimension_group: churn_date_c {
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
    sql: ${TABLE}."CHURN_DATE_C" ;;
  }

  dimension: churn_status_c {
    type: string
    sql: ${TABLE}."CHURN_STATUS_C" ;;
  }

  dimension: churned_c {
    type: string
    sql: ${TABLE}."CHURNED_C" ;;
  }

  dimension_group: close {
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
    sql: ${TABLE}."CLOSE_DATE" ;;
  }

  dimension: close_date_push_counter_c {
    type: number
    sql: ${TABLE}."CLOSE_DATE_PUSH_COUNTER_C" ;;
  }

  dimension: commissionable_arr_for_commission_tool_c {
    type: number
    sql: ${TABLE}."COMMISSIONABLE_ARR_FOR_COMMISSION_TOOL_C" ;;
  }

  dimension: competing_against_c {
    type: string
    sql: ${TABLE}."COMPETING_AGAINST_C" ;;
  }

  dimension_group: competitor_s_contract_end_date_c {
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
    sql: ${TABLE}."COMPETITOR_S_CONTRACT_END_DATE_C" ;;
  }

  dimension: confirmed_contract_end_date_c {
    type: yesno
    sql: ${TABLE}."CONFIRMED_CONTRACT_END_DATE_C" ;;
  }

  dimension: contact_id {
    type: string
    sql: ${TABLE}."CONTACT_ID" ;;
  }

  dimension_group: contract_end_date_c {
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
    sql: ${TABLE}."CONTRACT_END_DATE_C" ;;
  }

  dimension: contract_id {
    type: string
    sql: ${TABLE}."CONTRACT_ID" ;;
  }

  dimension: contract_length_months_c {
    type: number
    sql: ${TABLE}."CONTRACT_LENGTH_MONTHS_C" ;;
  }

  dimension: contract_length_old_c {
    type: string
    sql: ${TABLE}."CONTRACT_LENGTH_OLD_C" ;;
  }

  dimension: contract_notes_c {
    type: string
    sql: ${TABLE}."CONTRACT_NOTES_C" ;;
  }

  dimension_group: contract_start_date_c {
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
    sql: ${TABLE}."CONTRACT_START_DATE_C" ;;
  }

  dimension: created_by_id {
    type: string
    sql: ${TABLE}."CREATED_BY_ID" ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."CREATED_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension: created_tier_1_mrr_c {
    type: number
    sql: ${TABLE}."CREATED_TIER_1_MRR_C" ;;
  }

  dimension: cs_manager_forecast_arr_c {
    type: number
    sql: ${TABLE}."CS_MANAGER_FORECAST_ARR_C" ;;
  }

  dimension: current_attribution_test_c {
    type: string
    sql: ${TABLE}."CURRENT_ATTRIBUTION_TEST_C" ;;
  }

  dimension: current_esp_c {
    type: string
    sql: ${TABLE}."CURRENT_ESP_C" ;;
  }

  dimension: current_marketing_automation_c {
    type: string
    sql: ${TABLE}."CURRENT_MARKETING_AUTOMATION_C" ;;
  }

  dimension: current_situation_c {
    type: string
    sql: ${TABLE}."CURRENT_SITUATION_C" ;;
  }

  dimension: custom_cancellation_terms_c {
    type: string
    sql: ${TABLE}."CUSTOM_CANCELLATION_TERMS_C" ;;
  }

  dimension: custom_collateral_c {
    type: string
    sql: ${TABLE}."CUSTOM_COLLATERAL_C" ;;
  }

  dimension: custom_collateral_old_c {
    type: string
    sql: ${TABLE}."CUSTOM_COLLATERAL_OLD_C" ;;
  }

  dimension: custom_events_c {
    type: number
    sql: ${TABLE}."CUSTOM_EVENTS_C" ;;
  }

  dimension: custom_msa_terms_c {
    type: string
    sql: ${TABLE}."CUSTOM_MSA_TERMS_C" ;;
  }

  dimension: custom_product_features_c {
    type: string
    sql: ${TABLE}."CUSTOM_PRODUCT_FEATURES_C" ;;
  }

  dimension: custom_renewal_terms_c {
    type: string
    sql: ${TABLE}."CUSTOM_RENEWAL_TERMS_C" ;;
  }

  dimension: custom_support_terms_c {
    type: string
    sql: ${TABLE}."CUSTOM_SUPPORT_TERMS_C" ;;
  }

  dimension: customer_indemnification_9_2_c {
    type: string
    sql: ${TABLE}."CUSTOMER_INDEMNIFICATION_9_2_C" ;;
  }

  dimension: customer_success_rep_c {
    type: string
    sql: ${TABLE}."CUSTOMER_SUCCESS_REP_C" ;;
  }

  dimension_group: date_ofac_compliant_c {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."DATE_OFAC_COMPLIANT_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: date_sdr_added_c {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."DATE_SDR_ADDED_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: date_stage_2_c {
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
    sql: ${TABLE}."DATE_STAGE_2_C" ;;
  }

  dimension_group: date_stage_3_c {
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
    sql: ${TABLE}."DATE_STAGE_3_C" ;;
  }

  dimension_group: date_stage_4_c {
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
    sql: ${TABLE}."DATE_STAGE_4_C" ;;
  }

  dimension_group: date_stage_5_c {
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
    sql: ${TABLE}."DATE_STAGE_5_C" ;;
  }

  dimension_group: date_stage_6_c {
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
    sql: ${TABLE}."DATE_STAGE_6_C" ;;
  }

  dimension: decision_making_process_c {
    type: string
    sql: ${TABLE}."DECISION_MAKING_PROCESS_C" ;;
  }

  dimension: deliverability_concerns_c {
    type: string
    sql: ${TABLE}."DELIVERABILITY_CONCERNS_C" ;;
  }

  dimension: deliverability_mrr_c {
    type: number
    sql: ${TABLE}."DELIVERABILITY_MRR_C" ;;
  }

  dimension: deliverability_products_c {
    type: yesno
    sql: ${TABLE}."DELIVERABILITY_PRODUCTS_C" ;;
  }

  dimension_group: deliverability_renewal_date_c {
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
    sql: ${TABLE}."DELIVERABILITY_RENEWAL_DATE_C" ;;
  }

  dimension: deliverability_services_c {
    type: yesno
    sql: ${TABLE}."DELIVERABILITY_SERVICES_C" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: desired_capabilities_c {
    type: string
    sql: ${TABLE}."DESIRED_CAPABILITIES_C" ;;
  }

  dimension_group: desired_go_live_date_c {
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
    sql: ${TABLE}."DESIRED_GO_LIVE_DATE_C" ;;
  }

  dimension_group: desired_kick_off_call_date_c {
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
    sql: ${TABLE}."DESIRED_KICK_OFF_CALL_DATE_C" ;;
  }

  dimension: dpa_included_c {
    type: yesno
    sql: ${TABLE}."DPA_INCLUDED_C" ;;
  }

  dimension: dscorgpkg_converted_from_discoverorg_data_c {
    type: yesno
    sql: ${TABLE}."DSCORGPKG_CONVERTED_FROM_DISCOVERORG_DATA_C" ;;
  }

  dimension: effect_of_termination_2_3_c {
    type: string
    sql: ${TABLE}."EFFECT_OF_TERMINATION_2_3_C" ;;
  }

  dimension: email_c {
    type: yesno
    sql: ${TABLE}."EMAIL_C" ;;
  }

  dimension: email_volume_c {
    type: string
    sql: ${TABLE}."EMAIL_VOLUME_C" ;;
  }

  dimension: emails_sent_through_c {
    type: string
    sql: ${TABLE}."EMAILS_SENT_THROUGH_C" ;;
  }

  dimension: engagement_negative_reasons_c {
    type: string
    sql: ${TABLE}."ENGAGEMENT_NEGATIVE_REASONS_C" ;;
  }

  dimension: engagement_positive_reasons_c {
    type: string
    sql: ${TABLE}."ENGAGEMENT_POSITIVE_REASONS_C" ;;
  }

  dimension: engagement_risk_level_c {
    type: string
    sql: ${TABLE}."ENGAGEMENT_RISK_LEVEL_C" ;;
  }

  dimension: engagement_risk_score_c {
    type: number
    sql: ${TABLE}."ENGAGEMENT_RISK_SCORE_C" ;;
  }

  dimension: estimated_average_sender_score_c {
    type: number
    sql: ${TABLE}."ESTIMATED_AVERAGE_SENDER_SCORE_C" ;;
  }

  dimension: estimated_fit_c {
    type: number
    sql: ${TABLE}."ESTIMATED_FIT_C" ;;
  }

  dimension: executive_sponsor_c {
    type: string
    sql: ${TABLE}."EXECUTIVE_SPONSOR_C" ;;
  }

  dimension: expected_mrr_manager_adjusted_c {
    type: number
    sql: ${TABLE}."EXPECTED_MRR_MANAGER_ADJUSTED_C" ;;
  }

  dimension: expected_revenue {
    type: number
    sql: ${TABLE}."EXPECTED_REVENUE" ;;
  }

  dimension: external_technical_contact_c {
    type: string
    sql: ${TABLE}."EXTERNAL_TECHNICAL_CONTACT_C" ;;
  }

  dimension: fcio_1_routing_rule_c {
    type: string
    sql: ${TABLE}."FCIO_1_ROUTING_RULE_C" ;;
  }

  dimension_group: first_sc_active_at_c {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."FIRST_SC_ACTIVE_AT_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: first_sc_inactive_at_c {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."FIRST_SC_INACTIVE_AT_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: first_year_arr_c {
    type: number
    sql: ${TABLE}."FIRST_YEAR_ARR_C" ;;
  }

  dimension: first_year_growth_cs_roe_tracking_c {
    type: yesno
    sql: ${TABLE}."FIRST_YEAR_GROWTH_CS_ROE_TRACKING_C" ;;
  }

  dimension: forecast_category {
    type: string
    sql: ${TABLE}."FORECAST_CATEGORY" ;;
  }

  dimension: forecast_category_c {
    type: string
    sql: ${TABLE}."FORECAST_CATEGORY_C" ;;
  }

  dimension: forecast_category_name {
    type: string
    sql: ${TABLE}."FORECAST_CATEGORY_NAME" ;;
  }

  dimension: forecast_negative_reasons_c {
    type: string
    sql: ${TABLE}."FORECAST_NEGATIVE_REASONS_C" ;;
  }

  dimension: forecast_positive_reasons_c {
    type: string
    sql: ${TABLE}."FORECAST_POSITIVE_REASONS_C" ;;
  }

  dimension: forecast_risk_level_c {
    type: string
    sql: ${TABLE}."FORECAST_RISK_LEVEL_C" ;;
  }

  dimension: forecast_risk_score_c {
    type: number
    sql: ${TABLE}."FORECAST_RISK_SCORE_C" ;;
  }

  dimension: fy_20_approved_pricing_holdover_c {
    type: yesno
    sql: ${TABLE}."FY_20_APPROVED_PRICING_HOLDOVER_C" ;;
  }

  dimension: gclid_c {
    type: string
    sql: ${TABLE}."GCLID_C" ;;
  }

  dimension: governing_law_12_2_c {
    type: string
    sql: ${TABLE}."GOVERNING_LAW_12_2_C" ;;
  }

  dimension: growth_subscribers_c {
    type: number
    sql: ${TABLE}."GROWTH_SUBSCRIBERS_C" ;;
  }

  dimension: gs_object_type_c {
    type: string
    sql: ${TABLE}."GS_OBJECT_TYPE_C" ;;
  }

  dimension: gs_partner_key_c {
    type: string
    sql: ${TABLE}."GS_PARTNER_KEY_C" ;;
  }

  dimension: has_notes_or_attachments_c {
    type: yesno
    sql: ${TABLE}."HAS_NOTES_OR_ATTACHMENTS_C" ;;
  }

  dimension: has_open_activity {
    type: yesno
    sql: ${TABLE}."HAS_OPEN_ACTIVITY" ;;
  }

  dimension: has_opportunity_line_item {
    type: yesno
    sql: ${TABLE}."HAS_OPPORTUNITY_LINE_ITEM" ;;
  }

  dimension: has_overdue_task {
    type: yesno
    sql: ${TABLE}."HAS_OVERDUE_TASK" ;;
  }

  dimension: heard_about_us_c {
    type: string
    sql: ${TABLE}."HEARD_ABOUT_US_C" ;;
  }

  dimension: ideal_situation_c {
    type: string
    sql: ${TABLE}."IDEAL_SITUATION_C" ;;
  }

  dimension: impact_c {
    type: string
    sql: ${TABLE}."IMPACT_C" ;;
  }

  dimension: implementation_c {
    type: number
    sql: ${TABLE}."IMPLEMENTATION_C" ;;
  }

  dimension: implementation_package_c {
    type: string
    sql: ${TABLE}."IMPLEMENTATION_PACKAGE_C" ;;
  }

  dimension: implementation_package_flux_c {
    type: string
    sql: ${TABLE}."IMPLEMENTATION_PACKAGE_FLUX_C" ;;
  }

  dimension: in_app_c {
    type: yesno
    sql: ${TABLE}."IN_APP_C" ;;
  }

  dimension: integrations_c {
    type: string
    sql: ${TABLE}."INTEGRATIONS_C" ;;
  }

  dimension: ip_comments_c {
    type: string
    sql: ${TABLE}."IP_COMMENTS_C" ;;
  }

  dimension: ip_type_c {
    type: string
    sql: ${TABLE}."IP_TYPE_C" ;;
  }

  dimension: ironclad_workflow_c {
    type: string
    sql: ${TABLE}."IRONCLAD_WORKFLOW_C" ;;
  }

  dimension: is_closed {
    type: yesno
    sql: ${TABLE}."IS_CLOSED" ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}."IS_DELETED" ;;
  }

  dimension: is_excluded_from_territory_2_filter {
    type: yesno
    sql: ${TABLE}."IS_EXCLUDED_FROM_TERRITORY_2_FILTER" ;;
  }

  dimension: is_private {
    type: yesno
    sql: ${TABLE}."IS_PRIVATE" ;;
  }

  dimension: is_won {
    type: yesno
    sql: ${TABLE}."IS_WON" ;;
  }

  dimension_group: last_activity {
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
    sql: ${TABLE}."LAST_ACTIVITY_DATE" ;;
  }

  dimension: last_amount_changed_history_id {
    type: string
    sql: ${TABLE}."LAST_AMOUNT_CHANGED_HISTORY_ID" ;;
  }

  dimension: last_close_date_changed_history_id {
    type: string
    sql: ${TABLE}."LAST_CLOSE_DATE_CHANGED_HISTORY_ID" ;;
  }

  dimension: last_modified_by_id {
    type: string
    sql: ${TABLE}."LAST_MODIFIED_BY_ID" ;;
  }

  dimension_group: last_modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."LAST_MODIFIED_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: last_referenced {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."LAST_REFERENCED_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: last_viewed {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."LAST_VIEWED_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension: lead_source {
    type: string
    sql: ${TABLE}."LEAD_SOURCE" ;;
  }

  dimension: lean_data_days_in_stage_c {
    type: number
    sql: ${TABLE}."LEAN_DATA_DAYS_IN_STAGE_C" ;;
  }

  dimension: lean_data_order_number_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_ORDER_NUMBER_C" ;;
  }

  dimension_group: lean_data_reporting_last_run_date_c {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."LEAN_DATA_REPORTING_LAST_RUN_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: lean_data_reporting_opportunity_source_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_REPORTING_OPPORTUNITY_SOURCE_C" ;;
  }

  dimension: lean_data_reporting_total_marketing_touches_c {
    type: number
    sql: ${TABLE}."LEAN_DATA_REPORTING_TOTAL_MARKETING_TOUCHES_C" ;;
  }

  dimension: lean_data_reporting_won_number_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_REPORTING_WON_NUMBER_C" ;;
  }

  dimension: lean_data_routing_action_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_ROUTING_ACTION_C" ;;
  }

  dimension: lid_current_generators_c {
    type: string
    sql: ${TABLE}."LID_CURRENT_GENERATORS_C" ;;
  }

  dimension: lid_delivery_installation_status_c {
    type: string
    sql: ${TABLE}."LID_DELIVERY_INSTALLATION_STATUS_C" ;;
  }

  dimension: lid_is_influenced_c {
    type: yesno
    sql: ${TABLE}."LID_IS_INFLUENCED_C" ;;
  }

  dimension: lid_linked_in_company_id_c {
    type: string
    sql: ${TABLE}."LID_LINKED_IN_COMPANY_ID_C" ;;
  }

  dimension: lid_main_competitors_c {
    type: string
    sql: ${TABLE}."LID_MAIN_COMPETITORS_C" ;;
  }

  dimension_group: lid_my_date_time_c {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."LID_MY_DATE_TIME_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: lid_my_geolocation_latitude_s {
    type: number
    sql: ${TABLE}."LID_MY_GEOLOCATION_LATITUDE_S" ;;
  }

  dimension: lid_my_geolocation_longitude_s {
    type: number
    sql: ${TABLE}."LID_MY_GEOLOCATION_LONGITUDE_S" ;;
  }

  dimension: lid_order_number_c {
    type: string
    sql: ${TABLE}."LID_ORDER_NUMBER_C" ;;
  }

  dimension: lid_tracking_number_c {
    type: string
    sql: ${TABLE}."LID_TRACKING_NUMBER_C" ;;
  }

  dimension: limitation_of_liability_c {
    type: string
    sql: ${TABLE}."LIMITATION_OF_LIABILITY_C" ;;
  }

  dimension: loss_reason_description_c {
    type: string
    sql: ${TABLE}."LOSS_REASON_DESCRIPTION_C" ;;
  }

  dimension: loss_reason_description_v_2_c {
    type: string
    sql: ${TABLE}."LOSS_REASON_DESCRIPTION_V_2_C" ;;
  }

  dimension: loss_reason_master_c {
    type: string
    sql: ${TABLE}."LOSS_REASON_MASTER_C" ;;
  }

  dimension: loss_sub_reason_1_master_c {
    type: string
    sql: ${TABLE}."LOSS_SUB_REASON_1_MASTER_C" ;;
  }

  dimension: loss_sub_reason_2_master_c {
    type: string
    sql: ${TABLE}."LOSS_SUB_REASON_2_MASTER_C" ;;
  }

  dimension: loss_sub_reason_3_v_2_master_c {
    type: string
    sql: ${TABLE}."LOSS_SUB_REASON_3_V_2_MASTER_C" ;;
  }

  dimension: manager_forecast_judgement_c {
    type: string
    sql: ${TABLE}."MANAGER_FORECAST_JUDGEMENT_C" ;;
  }

  dimension: manager_forecast_notes_c {
    type: string
    sql: ${TABLE}."MANAGER_FORECAST_NOTES_C" ;;
  }

  dimension: margin_c {
    type: number
    sql: ${TABLE}."MARGIN_C" ;;
  }

  dimension: marketing_maturity_score_c {
    type: string
    sql: ${TABLE}."MARKETING_MATURITY_SCORE_C" ;;
  }

  dimension: marketing_maturity_score_comments_c {
    type: string
    sql: ${TABLE}."MARKETING_MATURITY_SCORE_COMMENTS_C" ;;
  }

  dimension: marketing_sourced_temporary_field_c {
    type: yesno
    sql: ${TABLE}."MARKETING_SOURCED_TEMPORARY_FIELD_C" ;;
  }

  dimension: max_one_time_email_sends_c {
    type: number
    sql: ${TABLE}."MAX_ONE_TIME_EMAIL_SENDS_C" ;;
  }

  dimension: meddpicc_c {
    type: string
    sql: ${TABLE}."MEDDPICC_C" ;;
  }

  dimension: meddpicc_manager_conversation_c {
    type: yesno
    sql: ${TABLE}."MEDDPICC_MANAGER_CONVERSATION_C" ;;
  }

  dimension: meeting_completed_c {
    type: yesno
    sql: ${TABLE}."MEETING_COMPLETED_C" ;;
  }

  dimension: mk_stage_30_days_ago_c {
    type: string
    sql: ${TABLE}."MK_STAGE_30_DAYS_AGO_C" ;;
  }

  dimension: mk_stage_7_days_ago_c {
    type: string
    sql: ${TABLE}."MK_STAGE_7_DAYS_AGO_C" ;;
  }

  dimension_group: most_recent_sc_active_at_c {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."MOST_RECENT_SC_ACTIVE_AT_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: most_recent_sc_inactive_at_c {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."MOST_RECENT_SC_INACTIVE_AT_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: mrr_after_30_days_c {
    type: number
    sql: ${TABLE}."MRR_AFTER_30_DAYS_C" ;;
  }

  dimension: mrr_after_60_days_c {
    type: number
    sql: ${TABLE}."MRR_AFTER_60_DAYS_C" ;;
  }

  dimension_group: mrr_churn_month_c {
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
    sql: ${TABLE}."MRR_CHURN_MONTH_C" ;;
  }

  dimension: msa_effect_of_termination_c {
    type: string
    sql: ${TABLE}."MSA_EFFECT_OF_TERMINATION_C" ;;
  }

  dimension: msa_iterable_platform_c {
    type: string
    sql: ${TABLE}."MSA_ITERABLE_PLATFORM_C" ;;
  }

  dimension: msa_late_payment_c {
    type: string
    sql: ${TABLE}."MSA_LATE_PAYMENT_C" ;;
  }

  dimension: msa_notices_c {
    type: string
    sql: ${TABLE}."MSA_NOTICES_C" ;;
  }

  dimension: msa_payment_c {
    type: string
    sql: ${TABLE}."MSA_PAYMENT_C" ;;
  }

  dimension: msa_public_announcement_c {
    type: string
    sql: ${TABLE}."MSA_PUBLIC_ANNOUNCEMENT_C" ;;
  }

  dimension: msa_term_c {
    type: string
    sql: ${TABLE}."MSA_TERM_C" ;;
  }

  dimension: msa_termination_c {
    type: string
    sql: ${TABLE}."MSA_TERMINATION_C" ;;
  }

  dimension: mutual_indemnification_9_1_c {
    type: string
    sql: ${TABLE}."MUTUAL_INDEMNIFICATION_9_1_C" ;;
  }

  dimension: mutual_plan_attached_c {
    type: yesno
    sql: ${TABLE}."MUTUAL_PLAN_ATTACHED_C" ;;
  }

  dimension: mutual_plan_c {
    type: string
    sql: ${TABLE}."MUTUAL_PLAN_C" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension_group: next_meeting_c {
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
    sql: ${TABLE}."NEXT_MEETING_C" ;;
  }

  dimension_group: next_sales_outreach_date_c {
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
    sql: ${TABLE}."NEXT_SALES_OUTREACH_DATE_C" ;;
  }

  dimension: next_step {
    type: string
    sql: ${TABLE}."NEXT_STEP" ;;
  }

  dimension_group: next_step_date_c {
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
    sql: ${TABLE}."NEXT_STEP_DATE_C" ;;
  }

  dimension: next_steps_c {
    type: string
    sql: ${TABLE}."NEXT_STEPS_C" ;;
  }

  dimension: next_steps_confirmed_c {
    type: string
    sql: ${TABLE}."NEXT_STEPS_CONFIRMED_C" ;;
  }

  dimension: number_of_dedicated_ips_c {
    type: number
    sql: ${TABLE}."NUMBER_OF_DEDICATED_IPS_C" ;;
  }

  dimension: number_of_implementation_payments_c {
    type: number
    sql: ${TABLE}."NUMBER_OF_IMPLEMENTATION_PAYMENTS_C" ;;
  }

  dimension: number_of_pilot_payments_c {
    type: number
    sql: ${TABLE}."NUMBER_OF_PILOT_PAYMENTS_C" ;;
  }

  dimension: number_of_projects_c {
    type: number
    sql: ${TABLE}."NUMBER_OF_PROJECTS_C" ;;
  }

  dimension: number_subscribers_c {
    type: string
    sql: ${TABLE}."NUMBER_SUBSCRIBERS_C" ;;
  }

  dimension: of_additional_terms_c {
    type: string
    sql: ${TABLE}."OF_ADDITIONAL_TERMS_C" ;;
  }

  dimension: of_touches_c {
    type: number
    sql: ${TABLE}."OF_TOUCHES_C" ;;
  }

  dimension: onboarding_package_old_c {
    type: string
    sql: ${TABLE}."ONBOARDING_PACKAGE_OLD_C" ;;
  }

  dimension: one_time_fees_c {
    type: number
    sql: ${TABLE}."ONE_TIME_FEES_C" ;;
  }

  dimension: open_action_items_c {
    type: string
    sql: ${TABLE}."OPEN_ACTION_ITEMS_C" ;;
  }

  dimension: opportunity_account_id {
    type: string
    sql: ${TABLE}."OPPORTUNITY_ACCOUNT_ID" ;;
  }

  dimension: opportunity_id {
    type: string
    sql: ${TABLE}."OPPORTUNITY_ID" ;;
  }

  dimension: overage_payment_schedule_c {
    type: string
    sql: ${TABLE}."OVERAGE_PAYMENT_SCHEDULE_C" ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}."OWNER_ID" ;;
  }

  dimension: owner_role_override_c {
    type: string
    sql: ${TABLE}."OWNER_ROLE_OVERRIDE_C" ;;
  }

  dimension: partner_allbound_integration_c {
    type: string
    sql: ${TABLE}."PARTNER_ALLBOUND_INTEGRATION_C" ;;
  }

  dimension: partner_contact_c {
    type: string
    sql: ${TABLE}."PARTNER_CONTACT_C" ;;
  }

  dimension: partner_referral_c {
    type: number
    sql: ${TABLE}."PARTNER_REFERRAL_C" ;;
  }

  dimension: partner_stack_lead_key_c {
    type: string
    sql: ${TABLE}."PARTNER_STACK_LEAD_KEY_C" ;;
  }

  dimension_group: pilot_end_date_c {
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
    sql: ${TABLE}."PILOT_END_DATE_C" ;;
  }

  dimension: pilot_fee_c {
    type: number
    sql: ${TABLE}."PILOT_FEE_C" ;;
  }

  dimension_group: pilot_start_date_c {
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
    sql: ${TABLE}."PILOT_START_DATE_C" ;;
  }

  dimension: plan_c {
    type: string
    sql: ${TABLE}."PLAN_C" ;;
  }

  dimension: plan_of_record_c {
    type: number
    sql: ${TABLE}."PLAN_OF_RECORD_C" ;;
  }

  dimension: plan_of_record_catalog_c {
    type: number
    sql: ${TABLE}."PLAN_OF_RECORD_CATALOG_C" ;;
  }

  dimension: plan_of_record_deliverability_c {
    type: number
    sql: ${TABLE}."PLAN_OF_RECORD_DELIVERABILITY_C" ;;
  }

  dimension: plan_of_record_subscription_c {
    type: number
    sql: ${TABLE}."PLAN_OF_RECORD_SUBSCRIPTION_C" ;;
  }

  dimension: plan_of_record_support_c {
    type: number
    sql: ${TABLE}."PLAN_OF_RECORD_SUPPORT_C" ;;
  }

  dimension: point_of_view_c {
    type: string
    sql: ${TABLE}."POINT_OF_VIEW_C" ;;
  }

  dimension: power_c {
    type: string
    sql: ${TABLE}."POWER_C" ;;
  }

  dimension: premium_features_c {
    type: string
    sql: ${TABLE}."PREMIUM_FEATURES_C" ;;
  }

  dimension: previous_closed_won_opp_c {
    type: string
    sql: ${TABLE}."PREVIOUS_CLOSED_WON_OPP_C" ;;
  }

  dimension: pricebook_2_id {
    type: string
    sql: ${TABLE}."PRICEBOOK_2_ID" ;;
  }

  dimension: pricing_reasoning_c {
    type: string
    sql: ${TABLE}."PRICING_REASONING_C" ;;
  }

  dimension: primary_acquisition_strategy_c {
    type: string
    sql: ${TABLE}."PRIMARY_ACQUISITION_STRATEGY_C" ;;
  }

  dimension: primary_competitor_c {
    type: string
    sql: ${TABLE}."PRIMARY_COMPETITOR_C" ;;
  }

  dimension: primary_loss_reason_master_c {
    type: string
    sql: ${TABLE}."PRIMARY_LOSS_REASON_MASTER_C" ;;
  }

  dimension: primary_value_driver_c {
    type: string
    sql: ${TABLE}."PRIMARY_VALUE_DRIVER_C" ;;
  }

  dimension: probability {
    type: number
    sql: ${TABLE}."PROBABILITY" ;;
  }

  dimension: problem_c {
    type: string
    sql: ${TABLE}."PROBLEM_C" ;;
  }

  dimension: problems_c {
    type: string
    sql: ${TABLE}."PROBLEMS_C" ;;
  }

  dimension: product_recommendations_c {
    type: string
    sql: ${TABLE}."PRODUCT_RECOMMENDATIONS_C" ;;
  }

  dimension: project_s_details_c {
    type: string
    sql: ${TABLE}."PROJECT_S_DETAILS_C" ;;
  }

  dimension: prospect_fit_c {
    type: string
    sql: ${TABLE}."PROSPECT_FIT_C" ;;
  }

  dimension: push_c {
    type: yesno
    sql: ${TABLE}."PUSH_C" ;;
  }

  dimension: rbe_completed_c {
    type: yesno
    sql: ${TABLE}."RBE_COMPLETED_C" ;;
  }

  dimension: reason_churn_c {
    type: string
    sql: ${TABLE}."REASON_CHURN_C" ;;
  }

  dimension: reason_lost_c {
    type: string
    sql: ${TABLE}."REASON_LOST_C" ;;
  }

  dimension: reason_lost_description_c {
    type: string
    sql: ${TABLE}."REASON_LOST_DESCRIPTION_C" ;;
  }

  dimension: reason_lost_details_c {
    type: string
    sql: ${TABLE}."REASON_LOST_DETAILS_C" ;;
  }

  dimension: record_type_id {
    type: string
    sql: ${TABLE}."RECORD_TYPE_ID" ;;
  }

  dimension: referrer_c {
    type: string
    sql: ${TABLE}."REFERRER_C" ;;
  }

  dimension_group: renewal_cohort_date_c {
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
    sql: ${TABLE}."RENEWAL_COHORT_DATE_C" ;;
  }

  dimension: renewal_lost_new_competitor_c {
    type: string
    sql: ${TABLE}."RENEWAL_LOST_NEW_COMPETITOR_C" ;;
  }

  dimension: renewal_lost_reason_c {
    type: string
    sql: ${TABLE}."RENEWAL_LOST_REASON_C" ;;
  }

  dimension: renewal_lost_sub_reason_c {
    type: string
    sql: ${TABLE}."RENEWAL_LOST_SUB_REASON_C" ;;
  }

  dimension: reseller_partner_c {
    type: string
    sql: ${TABLE}."RESELLER_PARTNER_C" ;;
  }

  dimension: reseller_products_c {
    type: yesno
    sql: ${TABLE}."RESELLER_PRODUCTS_C" ;;
  }

  dimension: restrictions_3_4_c {
    type: string
    sql: ${TABLE}."RESTRICTIONS_3_4_C" ;;
  }

  dimension: rfp_c {
    type: string
    sql: ${TABLE}."RFP_C" ;;
  }

  dimension: sales_rep_c {
    type: string
    sql: ${TABLE}."SALES_REP_C" ;;
  }

  dimension: sc_active_c {
    type: yesno
    sql: ${TABLE}."SC_ACTIVE_C" ;;
  }

  dimension: sc_c {
    type: string
    sql: ${TABLE}."SC_C" ;;
  }

  dimension: sc_request_cancellation_details_c {
    type: string
    sql: ${TABLE}."SC_REQUEST_CANCELLATION_DETAILS_C" ;;
  }

  dimension: sc_request_data_score_c {
    type: number
    sql: ${TABLE}."SC_REQUEST_DATA_SCORE_C" ;;
  }

  dimension: sc_request_status_c {
    type: string
    sql: ${TABLE}."SC_REQUEST_STATUS_C" ;;
  }

  dimension: sc_role_c {
    type: string
    sql: ${TABLE}."SC_ROLE_C" ;;
  }

  dimension: sc_sign_off_c {
    type: yesno
    sql: ${TABLE}."SC_SIGN_OFF_C" ;;
  }

  dimension: sdr_c {
    type: string
    sql: ${TABLE}."SDR_C" ;;
  }

  dimension: sdr_research_c {
    type: string
    sql: ${TABLE}."SDR_RESEARCH_C" ;;
  }

  dimension: sdr_research_notes_c {
    type: string
    sql: ${TABLE}."SDR_RESEARCH_NOTES_C" ;;
  }

  dimension: sdr_role_override_c {
    type: string
    sql: ${TABLE}."SDR_ROLE_OVERRIDE_C" ;;
  }

  dimension: security_exhibit_included_c {
    type: yesno
    sql: ${TABLE}."SECURITY_EXHIBIT_INCLUDED_C" ;;
  }

  dimension: send_to_deal_desk_c {
    type: yesno
    sql: ${TABLE}."SEND_TO_DEAL_DESK_C" ;;
  }

  dimension: sla_c {
    type: yesno
    sql: ${TABLE}."SLA_C" ;;
  }

  dimension: sla_escalation_procedures_c {
    type: string
    sql: ${TABLE}."SLA_ESCALATION_PROCEDURES_C" ;;
  }

  dimension: sla_service_credit_c {
    type: string
    sql: ${TABLE}."SLA_SERVICE_CREDIT_C" ;;
  }

  dimension: sla_terms_c {
    type: string
    sql: ${TABLE}."SLA_TERMS_C" ;;
  }

  dimension: sla_uptime_commitment_c {
    type: string
    sql: ${TABLE}."SLA_UPTIME_COMMITMENT_C" ;;
  }

  dimension: sms_c {
    type: yesno
    sql: ${TABLE}."SMS_C" ;;
  }

  dimension: solution_c {
    type: string
    sql: ${TABLE}."SOLUTION_C" ;;
  }

  dimension: sparkpost_signals_c {
    type: yesno
    sql: ${TABLE}."SPARKPOST_SIGNALS_C" ;;
  }

  dimension: stage_3_arr_eo_m_c {
    type: number
    sql: ${TABLE}."STAGE_3_ARR_EO_M_C" ;;
  }

  dimension: stage_name {
    type: string
    sql: ${TABLE}."STAGE_NAME" ;;
  }

  dimension: support_fee_c {
    type: number
    sql: ${TABLE}."SUPPORT_FEE_C" ;;
  }

  dimension: support_mrr_c {
    type: number
    sql: ${TABLE}."SUPPORT_MRR_C" ;;
  }

  dimension: support_package_c {
    type: string
    sql: ${TABLE}."SUPPORT_PACKAGE_C" ;;
  }

  dimension_group: system_modstamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."SYSTEM_MODSTAMP" AS TIMESTAMP_NTZ) ;;
  }

  dimension: taskray_tr_deal_handoff_notes_c {
    type: string
    sql: ${TABLE}."TASKRAY_TR_DEAL_HANDOFF_NOTES_C" ;;
  }

  dimension: taskray_tr_desired_outcomes_c {
    type: string
    sql: ${TABLE}."TASKRAY_TR_DESIRED_OUTCOMES_C" ;;
  }

  dimension: taskray_tr_onboarding_kickoff_completed_c {
    type: yesno
    sql: ${TABLE}."TASKRAY_TR_ONBOARDING_KICKOFF_COMPLETED_C" ;;
  }

  dimension: tech_stack_keeping_add_c {
    type: string
    sql: ${TABLE}."TECH_STACK_KEEPING_ADD_C" ;;
  }

  dimension: tech_stack_keeping_add_comments_c {
    type: string
    sql: ${TABLE}."TECH_STACK_KEEPING_ADD_COMMENTS_C" ;;
  }

  dimension: tech_stack_mobile_c {
    type: string
    sql: ${TABLE}."TECH_STACK_MOBILE_C" ;;
  }

  dimension: tech_stack_mobile_comments_c {
    type: string
    sql: ${TABLE}."TECH_STACK_MOBILE_COMMENTS_C" ;;
  }

  dimension: tech_stack_replacing_c {
    type: string
    sql: ${TABLE}."TECH_STACK_REPLACING_C" ;;
  }

  dimension: tech_stack_replacing_comments_c {
    type: string
    sql: ${TABLE}."TECH_STACK_REPLACING_COMMENTS_C" ;;
  }

  dimension: technical_maturity_score_c {
    type: string
    sql: ${TABLE}."TECHNICAL_MATURITY_SCORE_C" ;;
  }

  dimension: technical_maturity_score_comments_c {
    type: string
    sql: ${TABLE}."TECHNICAL_MATURITY_SCORE_COMMENTS_C" ;;
  }

  dimension: technical_notes_c {
    type: string
    sql: ${TABLE}."TECHNICAL_NOTES_C" ;;
  }

  dimension: termination_2_2_c {
    type: string
    sql: ${TABLE}."TERMINATION_2_2_C" ;;
  }

  dimension: territory_2_id {
    type: string
    sql: ${TABLE}."TERRITORY_2_ID" ;;
  }

  dimension: tier_1_emails_month_c {
    type: number
    sql: ${TABLE}."TIER_1_EMAILS_MONTH_C" ;;
  }

  dimension: tier_1_mrr_c {
    type: number
    sql: ${TABLE}."TIER_1_MRR_C" ;;
  }

  dimension: tier_1_recommended_gm_c {
    type: number
    sql: ${TABLE}."TIER_1_RECOMMENDED_GM_C" ;;
  }

  dimension: tier_1_recommended_mrr_be_c {
    type: number
    sql: ${TABLE}."TIER_1_RECOMMENDED_MRR_BE_C" ;;
  }

  dimension: tier_1_subscribers_c {
    type: number
    sql: ${TABLE}."TIER_1_SUBSCRIBERS_C" ;;
  }

  dimension: tier_2_uplift_c {
    type: number
    sql: ${TABLE}."TIER_2_UPLIFT_C" ;;
  }

  dimension_group: tier_2_uplift_date_c {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."TIER_2_UPLIFT_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: tier_3_uplift_c {
    type: number
    sql: ${TABLE}."TIER_3_UPLIFT_C" ;;
  }

  dimension_group: tier_3_uplift_date_c {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."TIER_3_UPLIFT_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: tier_4_uplift_c {
    type: number
    sql: ${TABLE}."TIER_4_UPLIFT_C" ;;
  }

  dimension_group: tier_4_uplift_date_c {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."TIER_4_UPLIFT_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: total_bookings_old_c {
    type: number
    sql: ${TABLE}."TOTAL_BOOKINGS_OLD_C" ;;
  }

  dimension: total_opportunity_quantity {
    type: number
    sql: ${TABLE}."TOTAL_OPPORTUNITY_QUANTITY" ;;
  }

  dimension_group: trial_end_date_c {
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
    sql: ${TABLE}."TRIAL_END_DATE_C" ;;
  }

  dimension: trial_feature_c {
    type: string
    sql: ${TABLE}."TRIAL_FEATURE_C" ;;
  }

  dimension: trial_notes_c {
    type: string
    sql: ${TABLE}."TRIAL_NOTES_C" ;;
  }

  dimension_group: trial_sign_date_c {
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
    sql: ${TABLE}."TRIAL_SIGN_DATE_C" ;;
  }

  dimension_group: trial_start_date_c {
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
    sql: ${TABLE}."TRIAL_START_DATE_C" ;;
  }

  dimension: trial_status_c {
    type: string
    sql: ${TABLE}."TRIAL_STATUS_C" ;;
  }

  dimension: trigger_events_c {
    type: string
    sql: ${TABLE}."TRIGGER_EVENTS_C" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  dimension: upfront_payment_multi_year_deal_c {
    type: yesno
    sql: ${TABLE}."UPFRONT_PAYMENT_MULTI_YEAR_DEAL_C" ;;
  }

  dimension: use_case_alignment_score_c {
    type: string
    sql: ${TABLE}."USE_CASE_ALIGNMENT_SCORE_C" ;;
  }

  dimension: use_case_alignment_score_comments_c {
    type: string
    sql: ${TABLE}."USE_CASE_ALIGNMENT_SCORE_COMMENTS_C" ;;
  }

  dimension: use_case_comments_c {
    type: string
    sql: ${TABLE}."USE_CASE_COMMENTS_C" ;;
  }

  dimension: use_case_comments_old_c {
    type: string
    sql: ${TABLE}."USE_CASE_COMMENTS_OLD_C" ;;
  }

  dimension: use_cases_c {
    type: string
    sql: ${TABLE}."USE_CASES_C" ;;
  }

  dimension: user_dgs_c {
    type: string
    sql: ${TABLE}."USER_DGS_C" ;;
  }

  dimension: value_c {
    type: string
    sql: ${TABLE}."VALUE_C" ;;
  }

  dimension: vc_c {
    type: string
    sql: ${TABLE}."VC_C" ;;
  }

  dimension: vh_can_revive_c {
    type: yesno
    sql: ${TABLE}."VH_CAN_REVIVE_C" ;;
  }

  dimension_group: vh_date_revived_c {
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
    sql: ${TABLE}."VH_DATE_REVIVED_C" ;;
  }

  dimension: vh_deal_breaker_opportunity_gap_score_c {
    type: string
    sql: ${TABLE}."VH_DEAL_BREAKER_OPPORTUNITY_GAP_SCORE_C" ;;
  }

  dimension: vh_deal_challenge_opportunity_gap_score_c {
    type: string
    sql: ${TABLE}."VH_DEAL_CHALLENGE_OPPORTUNITY_GAP_SCORE_C" ;;
  }

  dimension: vh_nice_to_have_opportunity_gap_score_c {
    type: string
    sql: ${TABLE}."VH_NICE_TO_HAVE_OPPORTUNITY_GAP_SCORE_C" ;;
  }

  dimension: vh_opportunity_gap_score_c {
    type: string
    sql: ${TABLE}."VH_OPPORTUNITY_GAP_SCORE_C" ;;
  }

  dimension: vh_opportunity_score_c {
    type: number
    sql: ${TABLE}."VH_OPPORTUNITY_SCORE_C" ;;
  }

  dimension: vh_presales_concern_c {
    type: string
    sql: ${TABLE}."VH_PRESALES_CONCERN_C" ;;
  }

  dimension: vh_presales_stage_c {
    type: string
    sql: ${TABLE}."VH_PRESALES_STAGE_C" ;;
  }

  dimension: vh_technical_differentiation_c {
    type: string
    sql: ${TABLE}."VH_TECHNICAL_DIFFERENTIATION_C" ;;
  }

  dimension: wywyn_c {
    type: string
    sql: ${TABLE}."WYWYN_C" ;;
  }

  dimension: z_dedicated_ips_subscription_discount_c {
    type: number
    sql: ${TABLE}."Z_DEDICATED_IPS_SUBSCRIPTION_DISCOUNT_C" ;;
  }

  dimension: z_deliverability_support_sub_discount_c {
    type: number
    sql: ${TABLE}."Z_DELIVERABILITY_SUPPORT_SUB_DISCOUNT_C" ;;
  }

  dimension: z_implementation_services_discount_c {
    type: number
    sql: ${TABLE}."Z_IMPLEMENTATION_SERVICES_DISCOUNT_C" ;;
  }

  dimension: z_subscriber_profile_base_sub_discount_c {
    type: number
    sql: ${TABLE}."Z_SUBSCRIBER_PROFILE_BASE_SUB_DISCOUNT_C" ;;
  }

  dimension: zqu_current_generators_c {
    type: string
    sql: ${TABLE}."ZQU_CURRENT_GENERATORS_C" ;;
  }

  dimension: zqu_delivery_installation_status_c {
    type: string
    sql: ${TABLE}."ZQU_DELIVERY_INSTALLATION_STATUS_C" ;;
  }

  dimension: zqu_main_competitors_c {
    type: string
    sql: ${TABLE}."ZQU_MAIN_COMPETITORS_C" ;;
  }

  dimension: zqu_order_number_c {
    type: string
    sql: ${TABLE}."ZQU_ORDER_NUMBER_C" ;;
  }

  dimension: zqu_tracking_number_c {
    type: string
    sql: ${TABLE}."ZQU_TRACKING_NUMBER_C" ;;
  }

  dimension: zqu_zuora_config_c {
    type: string
    sql: ${TABLE}."ZQU_ZUORA_CONFIG_C" ;;
  }

  dimension: zuora_base_payment_frequency_c {
    type: string
    sql: ${TABLE}."ZUORA_BASE_PAYMENT_FREQUENCY_C" ;;
  }

  dimension: zuora_mrr_c {
    type: number
    sql: ${TABLE}."ZUORA_MRR_C" ;;
  }

  dimension: zuora_poc_services_discount_c {
    type: number
    sql: ${TABLE}."ZUORA_POC_SERVICES_DISCOUNT_C" ;;
  }

  dimension: zuora_sms_base_subscription_discount_c {
    type: number
    sql: ${TABLE}."ZUORA_SMS_BASE_SUBSCRIPTION_DISCOUNT_C" ;;
  }

  dimension: zuora_support_subscription_discount_c {
    type: number
    sql: ${TABLE}."ZUORA_SUPPORT_SUBSCRIPTION_DISCOUNT_C" ;;
  }

  dimension: zuora_tcv_c {
    type: number
    sql: ${TABLE}."ZUORA_TCV_C" ;;
  }

  dimension: zuora_total_c {
    type: number
    sql: ${TABLE}."ZUORA_TOTAL_C" ;;
  }

  dimension: zuora_total_discount_c {
    type: number
    sql: ${TABLE}."ZUORA_TOTAL_DISCOUNT_C" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, stage_name, forecast_category_name]
  }
}
