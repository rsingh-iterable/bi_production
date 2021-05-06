view: src_sf_account {
  sql_table_name: "DBT_RIYA"."SRC_SF_ACCOUNT"
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

  dimension: abm_c {
    type: string
    sql: ${TABLE}."ABM_C" ;;
  }

  dimension: abm_checkbox_c {
    type: yesno
    sql: ${TABLE}."ABM_CHECKBOX_C" ;;
  }

  dimension: account_engagement_minutes_30_days_c {
    type: number
    sql: ${TABLE}."ACCOUNT_ENGAGEMENT_MINUTES_30_DAYS_C" ;;
  }

  dimension: account_engagement_minutes_all_time_c {
    type: number
    sql: ${TABLE}."ACCOUNT_ENGAGEMENT_MINUTES_ALL_TIME_C" ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: account_id_c {
    type: string
    sql: ${TABLE}."ACCOUNT_ID_C" ;;
  }

  dimension_group: account_last_engagement_date_c {
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
    sql: ${TABLE}."ACCOUNT_LAST_ENGAGEMENT_DATE_C" ;;
  }

  dimension_group: account_last_sales_email_response_date_c {
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
    sql: CAST(${TABLE}."ACCOUNT_LAST_SALES_EMAIL_RESPONSE_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME" ;;
  }

  dimension: account_number {
    type: string
    sql: ${TABLE}."ACCOUNT_NUMBER" ;;
  }

  dimension: account_owner_non_formula_c {
    type: string
    sql: ${TABLE}."ACCOUNT_OWNER_NON_FORMULA_C" ;;
  }

  dimension: account_source {
    type: string
    sql: ${TABLE}."ACCOUNT_SOURCE" ;;
  }

  dimension: account_status_c {
    type: string
    sql: ${TABLE}."ACCOUNT_STATUS_C" ;;
  }

  dimension: account_status_reason_c {
    type: string
    sql: ${TABLE}."ACCOUNT_STATUS_REASON_C" ;;
  }

  dimension: activate_2019_c {
    type: string
    sql: ${TABLE}."ACTIVATE_2019_C" ;;
  }

  dimension: ae_c {
    type: string
    sql: ${TABLE}."AE_C" ;;
  }

  dimension: ae_manager_c {
    type: string
    sql: ${TABLE}."AE_MANAGER_C" ;;
  }

  dimension_group: ae_owner_change_date_c {
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
    sql: ${TABLE}."AE_OWNER_CHANGE_DATE_C" ;;
  }

  dimension: ae_target_c {
    type: yesno
    sql: ${TABLE}."AE_TARGET_C" ;;
  }

  dimension: allbound_id_c {
    type: string
    sql: ${TABLE}."ALLBOUND_ID_C" ;;
  }

  dimension: allbound_status_c {
    type: string
    sql: ${TABLE}."ALLBOUND_STATUS_C" ;;
  }

  dimension: annual_revenue {
    type: number
    sql: ${TABLE}."ANNUAL_REVENUE" ;;
  }

  dimension: app_downloads_last_90_days_apptopia_c {
    type: number
    sql: ${TABLE}."APP_DOWNLOADS_LAST_90_DAYS_APPTOPIA_C" ;;
  }

  dimension: area_code_c {
    type: number
    sql: ${TABLE}."AREA_CODE_C" ;;
  }

  dimension: assigned_territory_c {
    type: string
    sql: ${TABLE}."ASSIGNED_TERRITORY_C" ;;
  }

  dimension: assigned_territory_new_c {
    type: string
    sql: ${TABLE}."ASSIGNED_TERRITORY_NEW_C" ;;
  }

  dimension: baa_access_to_books_and_records_c {
    type: string
    sql: ${TABLE}."BAA_ACCESS_TO_BOOKS_AND_RECORDS_C" ;;
  }

  dimension: baa_amendment_and_incorp_of_amendments_c {
    type: string
    sql: ${TABLE}."BAA_AMENDMENT_AND_INCORP_OF_AMENDMENTS_C" ;;
  }

  dimension: baa_breach_reporting_cure_c {
    type: string
    sql: ${TABLE}."BAA_BREACH_REPORTING_CURE_C" ;;
  }

  dimension: baa_breach_reporting_termination_c {
    type: string
    sql: ${TABLE}."BAA_BREACH_REPORTING_TERMINATION_C" ;;
  }

  dimension: baa_c {
    type: yesno
    sql: ${TABLE}."BAA_C" ;;
  }

  dimension: baa_data_aggregation_c {
    type: string
    sql: ${TABLE}."BAA_DATA_AGGREGATION_C" ;;
  }

  dimension: baa_miscellaneous_notices_c {
    type: string
    sql: ${TABLE}."BAA_MISCELLANEOUS_NOTICES_C" ;;
  }

  dimension: baa_report_of_improper_use_disclosure_c {
    type: string
    sql: ${TABLE}."BAA_REPORT_OF_IMPROPER_USE_DISCLOSURE_C" ;;
  }

  dimension: baa_right_of_access_to_information_c {
    type: string
    sql: ${TABLE}."BAA_RIGHT_OF_ACCESS_TO_INFORMATION_C" ;;
  }

  dimension: baa_stated_purpose_c {
    type: string
    sql: ${TABLE}."BAA_STATED_PURPOSE_C" ;;
  }

  dimension: baa_subcontractors_c {
    type: string
    sql: ${TABLE}."BAA_SUBCONTRACTORS_C" ;;
  }

  dimension: baa_termination_c {
    type: string
    sql: ${TABLE}."BAA_TERMINATION_C" ;;
  }

  dimension_group: bd_date_of_last_update_c {
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
    sql: ${TABLE}."BD_DATE_OF_LAST_UPDATE_C" ;;
  }

  dimension: billing_city {
    type: string
    sql: ${TABLE}."BILLING_CITY" ;;
  }

  dimension: billing_country {
    type: string
    sql: ${TABLE}."BILLING_COUNTRY" ;;
  }

  dimension: billing_country_code {
    type: string
    sql: ${TABLE}."BILLING_COUNTRY_CODE" ;;
  }

  dimension: billing_geocode_accuracy {
    type: string
    sql: ${TABLE}."BILLING_GEOCODE_ACCURACY" ;;
  }

  dimension: billing_latitude {
    type: number
    sql: ${TABLE}."BILLING_LATITUDE" ;;
  }

  dimension: billing_longitude {
    type: number
    sql: ${TABLE}."BILLING_LONGITUDE" ;;
  }

  dimension: billing_postal_code {
    type: string
    sql: ${TABLE}."BILLING_POSTAL_CODE" ;;
  }

  dimension: billing_state {
    type: string
    sql: ${TABLE}."BILLING_STATE" ;;
  }

  dimension: billing_state_code {
    type: string
    sql: ${TABLE}."BILLING_STATE_CODE" ;;
  }

  dimension: billing_street {
    type: string
    sql: ${TABLE}."BILLING_STREET" ;;
  }

  dimension: blast_c {
    type: string
    sql: ${TABLE}."BLAST_C" ;;
  }

  dimension: case_study_terms_c {
    type: string
    sql: ${TABLE}."CASE_STUDY_TERMS_C" ;;
  }

  dimension: catalog_c {
    type: yesno
    sql: ${TABLE}."CATALOG_C" ;;
  }

  dimension: cbit_clearbit_c {
    type: string
    sql: ${TABLE}."CBIT_CLEARBIT_C" ;;
  }

  dimension: cbit_clearbit_ready_c {
    type: yesno
    sql: ${TABLE}."CBIT_CLEARBIT_READY_C" ;;
  }

  dimension: cbit_created_by_clearbit_c {
    type: yesno
    sql: ${TABLE}."CBIT_CREATED_BY_CLEARBIT_C" ;;
  }

  dimension: ch_contact_c {
    type: string
    sql: ${TABLE}."CH_CONTACT_C" ;;
  }

  dimension: ch_created_by_c {
    type: string
    sql: ${TABLE}."CH_CREATED_BY_C" ;;
  }

  dimension_group: ch_date_of_last_update_c {
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
    sql: ${TABLE}."CH_DATE_OF_LAST_UPDATE_C" ;;
  }

  dimension: ch_health_reason_c {
    type: string
    sql: ${TABLE}."CH_HEALTH_REASON_C" ;;
  }

  dimension: ch_interaction_type_c {
    type: string
    sql: ${TABLE}."CH_INTERACTION_TYPE_C" ;;
  }

  dimension: ch_next_steps_c {
    type: string
    sql: ${TABLE}."CH_NEXT_STEPS_C" ;;
  }

  dimension: ch_summary_c {
    type: string
    sql: ${TABLE}."CH_SUMMARY_C" ;;
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

  dimension: clearbit_industry_c {
    type: string
    sql: ${TABLE}."CLEARBIT_INDUSTRY_C" ;;
  }

  dimension: clearbit_industry_group_c {
    type: string
    sql: ${TABLE}."CLEARBIT_INDUSTRY_GROUP_C" ;;
  }

  dimension: clearbit_sector_c {
    type: string
    sql: ${TABLE}."CLEARBIT_SECTOR_C" ;;
  }

  dimension: clearbit_sub_industry_c {
    type: string
    sql: ${TABLE}."CLEARBIT_SUB_INDUSTRY_C" ;;
  }

  dimension: clearbit_website_c {
    type: string
    sql: ${TABLE}."CLEARBIT_WEBSITE_C" ;;
  }

  dimension: client_temperature_c {
    type: string
    sql: ${TABLE}."CLIENT_TEMPERATURE_C" ;;
  }

  dimension: cloudingo_agent_bar_c {
    type: string
    sql: ${TABLE}."CLOUDINGO_AGENT_BAR_C" ;;
  }

  dimension: cloudingo_agent_bas_c {
    type: number
    sql: ${TABLE}."CLOUDINGO_AGENT_BAS_C" ;;
  }

  dimension: cloudingo_agent_bav_c {
    type: string
    sql: ${TABLE}."CLOUDINGO_AGENT_BAV_C" ;;
  }

  dimension: cloudingo_agent_brdi_c {
    type: string
    sql: ${TABLE}."CLOUDINGO_AGENT_BRDI_C" ;;
  }

  dimension: cloudingo_agent_btz_c {
    type: string
    sql: ${TABLE}."CLOUDINGO_AGENT_BTZ_C" ;;
  }

  dimension: cloudingo_agent_sar_c {
    type: string
    sql: ${TABLE}."CLOUDINGO_AGENT_SAR_C" ;;
  }

  dimension: cloudingo_agent_sas_c {
    type: number
    sql: ${TABLE}."CLOUDINGO_AGENT_SAS_C" ;;
  }

  dimension: cloudingo_agent_sav_c {
    type: string
    sql: ${TABLE}."CLOUDINGO_AGENT_SAV_C" ;;
  }

  dimension: cloudingo_agent_srdi_c {
    type: string
    sql: ${TABLE}."CLOUDINGO_AGENT_SRDI_C" ;;
  }

  dimension: cloudingo_agent_stz_c {
    type: string
    sql: ${TABLE}."CLOUDINGO_AGENT_STZ_C" ;;
  }

  dimension: competitor_c {
    type: string
    sql: ${TABLE}."COMPETITOR_C" ;;
  }

  dimension: confirmed_contract_end_date_c {
    type: yesno
    sql: ${TABLE}."CONFIRMED_CONTRACT_END_DATE_C" ;;
  }

  dimension: connections_c {
    type: string
    sql: ${TABLE}."CONNECTIONS_C" ;;
  }

  dimension: correct_address_field_rep_input_c {
    type: string
    sql: ${TABLE}."CORRECT_ADDRESS_FIELD_REP_INPUT_C" ;;
  }

  dimension: correct_employee_count_rep_input_c {
    type: number
    sql: ${TABLE}."CORRECT_EMPLOYEE_COUNT_REP_INPUT_C" ;;
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

  dimension: csm_manager_c {
    type: string
    sql: ${TABLE}."CSM_MANAGER_C" ;;
  }

  dimension: csm_team_c {
    type: string
    sql: ${TABLE}."CSM_TEAM_C" ;;
  }

  dimension: current_apor_c {
    type: number
    sql: ${TABLE}."CURRENT_APOR_C" ;;
  }

  dimension_group: current_contract_end_date_old_c {
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
    sql: ${TABLE}."CURRENT_CONTRACT_END_DATE_OLD_C" ;;
  }

  dimension_group: current_contract_start_date_c {
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
    sql: ${TABLE}."CURRENT_CONTRACT_START_DATE_C" ;;
  }

  dimension: current_health_c {
    type: string
    sql: ${TABLE}."CURRENT_HEALTH_C" ;;
  }

  dimension: current_vendor_c {
    type: string
    sql: ${TABLE}."CURRENT_VENDOR_C" ;;
  }

  dimension_group: current_vendor_contract_end_date_c {
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
    sql: ${TABLE}."CURRENT_VENDOR_CONTRACT_END_DATE_C" ;;
  }

  dimension_group: current_vendor_last_updated_time_c {
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
    sql: CAST(${TABLE}."CURRENT_VENDOR_LAST_UPDATED_TIME_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: custom_cancellation_terms_c {
    type: string
    sql: ${TABLE}."CUSTOM_CANCELLATION_TERMS_C" ;;
  }

  dimension: custom_dpa_terms_c {
    type: string
    sql: ${TABLE}."CUSTOM_DPA_TERMS_C" ;;
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

  dimension: customer_account_plan_c {
    type: string
    sql: ${TABLE}."CUSTOMER_ACCOUNT_PLAN_C" ;;
  }

  dimension: customer_data_incident_management_c {
    type: string
    sql: ${TABLE}."CUSTOMER_DATA_INCIDENT_MANAGEMENT_C" ;;
  }

  dimension: customer_tier_c {
    type: string
    sql: ${TABLE}."CUSTOMER_TIER_C" ;;
  }

  dimension: da_scoop_composer_account_stage_c {
    type: string
    sql: ${TABLE}."DA_SCOOP_COMPOSER_ACCOUNT_STAGE_C" ;;
  }

  dimension: da_scoop_composer_account_tags_c {
    type: string
    sql: ${TABLE}."DA_SCOOP_COMPOSER_ACCOUNT_TAGS_C" ;;
  }

  dimension: da_scoop_composer_alias_1_c {
    type: string
    sql: ${TABLE}."DA_SCOOP_COMPOSER_ALIAS_1_C" ;;
  }

  dimension: da_scoop_composer_alias_2_c {
    type: string
    sql: ${TABLE}."DA_SCOOP_COMPOSER_ALIAS_2_C" ;;
  }

  dimension: da_scoop_composer_churned_customer_c {
    type: yesno
    sql: ${TABLE}."DA_SCOOP_COMPOSER_CHURNED_CUSTOMER_C" ;;
  }

  dimension: da_scoop_composer_domain_1_c {
    type: string
    sql: ${TABLE}."DA_SCOOP_COMPOSER_DOMAIN_1_C" ;;
  }

  dimension: da_scoop_composer_domain_2_c {
    type: string
    sql: ${TABLE}."DA_SCOOP_COMPOSER_DOMAIN_2_C" ;;
  }

  dimension: da_scoop_composer_dont_match_leads_to_this_account_c {
    type: yesno
    sql: ${TABLE}."DA_SCOOP_COMPOSER_DONT_MATCH_LEADS_TO_THIS_ACCOUNT_C" ;;
  }

  dimension: da_scoop_composer_engagement_status_c {
    type: string
    sql: ${TABLE}."DA_SCOOP_COMPOSER_ENGAGEMENT_STATUS_C" ;;
  }

  dimension: da_scoop_composer_groove_notes_c {
    type: string
    sql: ${TABLE}."DA_SCOOP_COMPOSER_GROOVE_NOTES_C" ;;
  }

  dimension: da_scoop_composer_hash_1_c {
    type: string
    sql: ${TABLE}."DA_SCOOP_COMPOSER_HASH_1_C" ;;
  }

  dimension: da_scoop_composer_hash_2_c {
    type: string
    sql: ${TABLE}."DA_SCOOP_COMPOSER_HASH_2_C" ;;
  }

  dimension: da_scoop_composer_hash_3_c {
    type: string
    sql: ${TABLE}."DA_SCOOP_COMPOSER_HASH_3_C" ;;
  }

  dimension: data_feed_c {
    type: string
    sql: ${TABLE}."DATA_FEED_C" ;;
  }

  dimension: data_not_accessible_outside_of_us_c {
    type: yesno
    sql: ${TABLE}."DATA_NOT_ACCESSIBLE_OUTSIDE_OF_US_C" ;;
  }

  dimension: datanyze_city_c_c {
    type: string
    sql: ${TABLE}."DATANYZE_CITY_C_C" ;;
  }

  dimension: datanyze_state_c_c {
    type: string
    sql: ${TABLE}."DATANYZE_STATE_C_C" ;;
  }

  dimension: datanyze_zip_code_c_c {
    type: string
    sql: ${TABLE}."DATANYZE_ZIP_CODE_C_C" ;;
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

  dimension: dedicated_sa_c {
    type: string
    sql: ${TABLE}."DEDICATED_SA_C" ;;
  }

  dimension: delighted_inc_detractors_c {
    type: number
    sql: ${TABLE}."DELIGHTED_INC_DETRACTORS_C" ;;
  }

  dimension: delighted_inc_nps_c {
    type: number
    sql: ${TABLE}."DELIGHTED_INC_NPS_C" ;;
  }

  dimension: delighted_inc_passives_c {
    type: number
    sql: ${TABLE}."DELIGHTED_INC_PASSIVES_C" ;;
  }

  dimension: delighted_inc_promoters_c {
    type: number
    sql: ${TABLE}."DELIGHTED_INC_PROMOTERS_C" ;;
  }

  dimension: deliverability_consultant_c {
    type: string
    sql: ${TABLE}."DELIVERABILITY_CONSULTANT_C" ;;
  }

  dimension: deliverability_manager_c {
    type: string
    sql: ${TABLE}."DELIVERABILITY_MANAGER_C" ;;
  }

  dimension: deliverability_products_c {
    type: yesno
    sql: ${TABLE}."DELIVERABILITY_PRODUCTS_C" ;;
  }

  dimension: deliverability_services_c {
    type: yesno
    sql: ${TABLE}."DELIVERABILITY_SERVICES_C" ;;
  }

  dimension: demandbase_intent_topics_c {
    type: string
    sql: ${TABLE}."DEMANDBASE_INTENT_TOPICS_C" ;;
  }

  dimension: demandbase_overall_score_c {
    type: number
    sql: ${TABLE}."DEMANDBASE_OVERALL_SCORE_C" ;;
  }

  dimension: demandbase_qualification_score_c {
    type: string
    sql: ${TABLE}."DEMANDBASE_QUALIFICATION_SCORE_C" ;;
  }

  dimension: demandbase_websites_top_5_c {
    type: string
    sql: ${TABLE}."DEMANDBASE_WEBSITES_TOP_5_C" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: df_account_score_c {
    type: number
    sql: ${TABLE}."DF_ACCOUNT_SCORE_C" ;;
  }

  dimension: df_account_score_emea_only_c {
    type: number
    sql: ${TABLE}."DF_ACCOUNT_SCORE_EMEA_ONLY_C" ;;
  }

  dimension: df_account_score_v_1_c {
    type: number
    sql: ${TABLE}."DF_ACCOUNT_SCORE_V_1_C" ;;
  }

  dimension: df_account_scoring_tier_c {
    type: string
    sql: ${TABLE}."DF_ACCOUNT_SCORING_TIER_C" ;;
  }

  dimension: df_industry_c {
    type: string
    sql: ${TABLE}."DF_INDUSTRY_C" ;;
  }

  dimension: df_naics_code_c {
    type: string
    sql: ${TABLE}."DF_NAICS_CODE_C" ;;
  }

  dimension: df_naics_code_description_c {
    type: string
    sql: ${TABLE}."DF_NAICS_CODE_DESCRIPTION_C" ;;
  }

  dimension: df_sub_industry_c {
    type: string
    sql: ${TABLE}."DF_SUB_INDUSTRY_C" ;;
  }

  dimension: dfox_alexa_rank_c {
    type: number
    sql: ${TABLE}."DFOX_ALEXA_RANK_C" ;;
  }

  dimension: dfox_crunchbase_url_c {
    type: string
    sql: ${TABLE}."DFOX_CRUNCHBASE_URL_C" ;;
  }

  dimension: dfox_data_fox_score_c {
    type: number
    sql: ${TABLE}."DFOX_DATA_FOX_SCORE_C" ;;
  }

  dimension: dfox_finance_score_c {
    type: number
    sql: ${TABLE}."DFOX_FINANCE_SCORE_C" ;;
  }

  dimension: dfox_growth_score_c {
    type: number
    sql: ${TABLE}."DFOX_GROWTH_SCORE_C" ;;
  }

  dimension: dfox_hr_score_c {
    type: number
    sql: ${TABLE}."DFOX_HR_SCORE_C" ;;
  }

  dimension: dfox_id_c {
    type: string
    sql: ${TABLE}."DFOX_ID_C" ;;
  }

  dimension: dfox_influence_score_c {
    type: number
    sql: ${TABLE}."DFOX_INFLUENCE_SCORE_C" ;;
  }

  dimension: dfox_investors_c {
    type: string
    sql: ${TABLE}."DFOX_INVESTORS_C" ;;
  }

  dimension: dfox_keywords_c {
    type: string
    sql: ${TABLE}."DFOX_KEYWORDS_C" ;;
  }

  dimension_group: dfox_last_synced_date_c {
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
    sql: CAST(${TABLE}."DFOX_LAST_SYNCED_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: dfox_latest_funding_amount_c {
    type: number
    sql: ${TABLE}."DFOX_LATEST_FUNDING_AMOUNT_C" ;;
  }

  dimension_group: dfox_latest_funding_date_c {
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
    sql: ${TABLE}."DFOX_LATEST_FUNDING_DATE_C" ;;
  }

  dimension: dfox_latest_funding_type_c {
    type: string
    sql: ${TABLE}."DFOX_LATEST_FUNDING_TYPE_C" ;;
  }

  dimension: dfox_linked_in_url_c {
    type: string
    sql: ${TABLE}."DFOX_LINKED_IN_URL_C" ;;
  }

  dimension: dfox_lists_c {
    type: string
    sql: ${TABLE}."DFOX_LISTS_C" ;;
  }

  dimension: dfox_revenue_estimate_c {
    type: number
    sql: ${TABLE}."DFOX_REVENUE_ESTIMATE_C" ;;
  }

  dimension: dfox_short_description_c {
    type: string
    sql: ${TABLE}."DFOX_SHORT_DESCRIPTION_C" ;;
  }

  dimension: dfox_sourced_from_data_fox_c {
    type: yesno
    sql: ${TABLE}."DFOX_SOURCED_FROM_DATA_FOX_C" ;;
  }

  dimension: dfox_stage_c {
    type: string
    sql: ${TABLE}."DFOX_STAGE_C" ;;
  }

  dimension: dfox_street_c {
    type: string
    sql: ${TABLE}."DFOX_STREET_C" ;;
  }

  dimension: dfox_techstack_c {
    type: string
    sql: ${TABLE}."DFOX_TECHSTACK_C" ;;
  }

  dimension: dfox_total_funding_c {
    type: number
    sql: ${TABLE}."DFOX_TOTAL_FUNDING_C" ;;
  }

  dimension: dfox_twitter_followers_c {
    type: number
    sql: ${TABLE}."DFOX_TWITTER_FOLLOWERS_C" ;;
  }

  dimension: dfox_twitter_handle_c {
    type: string
    sql: ${TABLE}."DFOX_TWITTER_HANDLE_C" ;;
  }

  dimension: dfox_url_c {
    type: string
    sql: ${TABLE}."DFOX_URL_C" ;;
  }

  dimension: dfox_web_traffic_estimate_c {
    type: number
    sql: ${TABLE}."DFOX_WEB_TRAFFIC_ESTIMATE_C" ;;
  }

  dimension: dfox_web_traffic_maus_estimate_c {
    type: number
    sql: ${TABLE}."DFOX_WEB_TRAFFIC_MAUS_ESTIMATE_C" ;;
  }

  dimension: dfox_year_founded_c {
    type: number
    sql: ${TABLE}."DFOX_YEAR_FOUNDED_C" ;;
  }

  dimension: discover_org_revenue_c {
    type: number
    sql: ${TABLE}."DISCOVER_ORG_REVENUE_C" ;;
  }

  dimension: do_alexa_rank_c {
    type: number
    sql: ${TABLE}."DO_ALEXA_RANK_C" ;;
  }

  dimension: do_billing_city_c {
    type: string
    sql: ${TABLE}."DO_BILLING_CITY_C" ;;
  }

  dimension: do_billing_country_c {
    type: string
    sql: ${TABLE}."DO_BILLING_COUNTRY_C" ;;
  }

  dimension: do_billing_state_c {
    type: string
    sql: ${TABLE}."DO_BILLING_STATE_C" ;;
  }

  dimension: do_billing_street_c {
    type: string
    sql: ${TABLE}."DO_BILLING_STREET_C" ;;
  }

  dimension: do_billing_zip_code_c {
    type: string
    sql: ${TABLE}."DO_BILLING_ZIP_CODE_C" ;;
  }

  dimension: do_funding_c {
    type: number
    sql: ${TABLE}."DO_FUNDING_C" ;;
  }

  dimension: do_headcount_c {
    type: number
    sql: ${TABLE}."DO_HEADCOUNT_C" ;;
  }

  dimension: do_revenue_c {
    type: number
    sql: ${TABLE}."DO_REVENUE_C" ;;
  }

  dimension: do_similarweb_rank_c {
    type: number
    sql: ${TABLE}."DO_SIMILARWEB_RANK_C" ;;
  }

  dimension: do_techstack_c {
    type: string
    sql: ${TABLE}."DO_TECHSTACK_C" ;;
  }

  dimension_group: dozisf_zoom_info_first_updated_c {
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
    sql: CAST(${TABLE}."DOZISF_ZOOM_INFO_FIRST_UPDATED_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: dozisf_zoom_info_id_c {
    type: string
    sql: ${TABLE}."DOZISF_ZOOM_INFO_ID_C" ;;
  }

  dimension_group: dozisf_zoom_info_last_updated_c {
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
    sql: CAST(${TABLE}."DOZISF_ZOOM_INFO_LAST_UPDATED_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: dpa_data_subject_requests_c {
    type: string
    sql: ${TABLE}."DPA_DATA_SUBJECT_REQUESTS_C" ;;
  }

  dimension: dpa_deletion_of_customer_data_c {
    type: string
    sql: ${TABLE}."DPA_DELETION_OF_CUSTOMER_DATA_C" ;;
  }

  dimension: dpa_included_c {
    type: yesno
    sql: ${TABLE}."DPA_INCLUDED_C" ;;
  }

  dimension: dpa_iterable_personnel_c {
    type: string
    sql: ${TABLE}."DPA_ITERABLE_PERSONNEL_C" ;;
  }

  dimension: dpa_objection_right_for_new_sps_c {
    type: string
    sql: ${TABLE}."DPA_OBJECTION_RIGHT_FOR_NEW_SPS_C" ;;
  }

  dimension: dpa_return_of_customer_data_c {
    type: string
    sql: ${TABLE}."DPA_RETURN_OF_CUSTOMER_DATA_C" ;;
  }

  dimension: dpa_third_party_certifications_audit_c {
    type: string
    sql: ${TABLE}."DPA_THIRD_PARTY_CERTIFICATIONS_AUDIT_C" ;;
  }

  dimension: dscorgpkg_conflict_c {
    type: string
    sql: ${TABLE}."DSCORGPKG_CONFLICT_C" ;;
  }

  dimension: dscorgpkg_deleted_from_discover_org_c {
    type: string
    sql: ${TABLE}."DSCORGPKG_DELETED_FROM_DISCOVER_ORG_C" ;;
  }

  dimension_group: dscorgpkg_discover_org_created_on_c {
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
    sql: CAST(${TABLE}."DSCORGPKG_DISCOVER_ORG_CREATED_ON_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: dscorgpkg_discover_org_first_update_c {
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
    sql: CAST(${TABLE}."DSCORGPKG_DISCOVER_ORG_FIRST_UPDATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: dscorgpkg_discover_org_full_country_name_c {
    type: string
    sql: ${TABLE}."DSCORGPKG_DISCOVER_ORG_FULL_COUNTRY_NAME_C" ;;
  }

  dimension: dscorgpkg_discover_org_id_c {
    type: string
    sql: ${TABLE}."DSCORGPKG_DISCOVER_ORG_ID_C" ;;
  }

  dimension_group: dscorgpkg_discover_org_last_update_c {
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
    sql: CAST(${TABLE}."DSCORGPKG_DISCOVER_ORG_LAST_UPDATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: dscorgpkg_discover_org_state_full_name_c {
    type: string
    sql: ${TABLE}."DSCORGPKG_DISCOVER_ORG_STATE_FULL_NAME_C" ;;
  }

  dimension: dscorgpkg_discover_org_technologies_c {
    type: string
    sql: ${TABLE}."DSCORGPKG_DISCOVER_ORG_TECHNOLOGIES_C" ;;
  }

  dimension: dscorgpkg_do_3_yr_employees_growth_c {
    type: string
    sql: ${TABLE}."DSCORGPKG_DO_3_YR_EMPLOYEES_GROWTH_C" ;;
  }

  dimension: dscorgpkg_do_3_yr_sales_growth_c {
    type: string
    sql: ${TABLE}."DSCORGPKG_DO_3_YR_SALES_GROWTH_C" ;;
  }

  dimension: dscorgpkg_exclude_update_c {
    type: yesno
    sql: ${TABLE}."DSCORGPKG_EXCLUDE_UPDATE_C" ;;
  }

  dimension: dscorgpkg_external_discover_org_id_c {
    type: string
    sql: ${TABLE}."DSCORGPKG_EXTERNAL_DISCOVER_ORG_ID_C" ;;
  }

  dimension: dscorgpkg_fiscal_year_end_c {
    type: string
    sql: ${TABLE}."DSCORGPKG_FISCAL_YEAR_END_C" ;;
  }

  dimension: dscorgpkg_fortune_rank_c {
    type: string
    sql: ${TABLE}."DSCORGPKG_FORTUNE_RANK_C" ;;
  }

  dimension: dscorgpkg_it_budget_c {
    type: number
    sql: ${TABLE}."DSCORGPKG_IT_BUDGET_C" ;;
  }

  dimension: dscorgpkg_it_employees_c {
    type: number
    sql: ${TABLE}."DSCORGPKG_IT_EMPLOYEES_C" ;;
  }

  dimension: dscorgpkg_lead_source_c {
    type: string
    sql: ${TABLE}."DSCORGPKG_LEAD_SOURCE_C" ;;
  }

  dimension: dscorgpkg_locked_by_user_c {
    type: string
    sql: ${TABLE}."DSCORGPKG_LOCKED_BY_USER_C" ;;
  }

  dimension: dscorgpkg_naics_codes_c {
    type: string
    sql: ${TABLE}."DSCORGPKG_NAICS_CODES_C" ;;
  }

  dimension: dscorgpkg_ownership_c {
    type: string
    sql: ${TABLE}."DSCORGPKG_OWNERSHIP_C" ;;
  }

  dimension: dscorgpkg_sic_codes_c {
    type: string
    sql: ${TABLE}."DSCORGPKG_SIC_CODES_C" ;;
  }

  dimension: du_lsid_c {
    type: string
    sql: ${TABLE}."DU_LSID_C" ;;
  }

  dimension: e_ds_c {
    type: string
    sql: ${TABLE}."E_DS_C" ;;
  }

  dimension: eds_account_domain_sync_error_c {
    type: string
    sql: ${TABLE}."EDS_ACCOUNT_DOMAIN_SYNC_ERROR_C" ;;
  }

  dimension: eds_brand_id_c {
    type: number
    value_format_name: id
    sql: ${TABLE}."EDS_BRAND_ID_C" ;;
  }

  dimension: eds_bulk_update_c {
    type: yesno
    sql: ${TABLE}."EDS_BULK_UPDATE_C" ;;
  }

  dimension: email_c {
    type: yesno
    sql: ${TABLE}."EMAIL_C" ;;
  }

  dimension: email_marketer_c {
    type: yesno
    sql: ${TABLE}."EMAIL_MARKETER_C" ;;
  }

  dimension: emails_month_c {
    type: number
    sql: ${TABLE}."EMAILS_MONTH_C" ;;
  }

  dimension: emails_sent_last_month_c {
    type: number
    sql: ${TABLE}."EMAILS_SENT_LAST_MONTH_C" ;;
  }

  dimension: emea_customer_c {
    type: yesno
    sql: ${TABLE}."EMEA_CUSTOMER_C" ;;
  }

  dimension: emea_top_1000_fastest_growing_c {
    type: yesno
    sql: ${TABLE}."EMEA_TOP_1000_FASTEST_GROWING_C" ;;
  }

  dimension: emea_top_1000_retail_c {
    type: yesno
    sql: ${TABLE}."EMEA_TOP_1000_RETAIL_C" ;;
  }

  dimension: emea_upload_c {
    type: string
    sql: ${TABLE}."EMEA_UPLOAD_C" ;;
  }

  dimension: employee_address_evidence_c {
    type: string
    sql: ${TABLE}."EMPLOYEE_ADDRESS_EVIDENCE_C" ;;
  }

  dimension: employee_count_ops_override_c {
    type: number
    sql: ${TABLE}."EMPLOYEE_COUNT_OPS_OVERRIDE_C" ;;
  }

  dimension: employees_c {
    type: string
    sql: ${TABLE}."EMPLOYEES_C" ;;
  }

  dimension: employees_linked_in_c {
    type: number
    sql: ${TABLE}."EMPLOYEES_LINKED_IN_C" ;;
  }

  dimension: engagio_anonymous_web_visits_c {
    type: number
    sql: ${TABLE}."ENGAGIO_ANONYMOUS_WEB_VISITS_C" ;;
  }

  dimension: engagio_engaged_people_c {
    type: number
    sql: ${TABLE}."ENGAGIO_ENGAGED_PEOPLE_C" ;;
  }

  dimension: engagio_engagement_minutes_last_3_months_c {
    type: number
    sql: ${TABLE}."ENGAGIO_ENGAGEMENT_MINUTES_LAST_3_MONTHS_C" ;;
  }

  dimension: engagio_engagement_minutes_last_7_days_c {
    type: number
    sql: ${TABLE}."ENGAGIO_ENGAGEMENT_MINUTES_LAST_7_DAYS_C" ;;
  }

  dimension_group: engagio_first_engagement_date_c {
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
    sql: CAST(${TABLE}."ENGAGIO_FIRST_ENGAGEMENT_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: engagio_known_web_visits_past_7_days_c {
    type: number
    sql: ${TABLE}."ENGAGIO_KNOWN_WEB_VISITS_PAST_7_DAYS_C" ;;
  }

  dimension: engagio_marketing_email_clicks_c {
    type: number
    sql: ${TABLE}."ENGAGIO_MARKETING_EMAIL_CLICKS_C" ;;
  }

  dimension_group: engagio_mqadate_c {
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
    sql: CAST(${TABLE}."ENGAGIO_MQADATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: engagio_number_of_people_c {
    type: number
    sql: ${TABLE}."ENGAGIO_NUMBER_OF_PEOPLE_C" ;;
  }

  dimension: engagio_status_c {
    type: string
    sql: ${TABLE}."ENGAGIO_STATUS_C" ;;
  }

  dimension: engagio_unknown_web_visits_past_7_days_c {
    type: number
    sql: ${TABLE}."ENGAGIO_UNKNOWN_WEB_VISITS_PAST_7_DAYS_C" ;;
  }

  dimension: engagio_web_visits_c {
    type: number
    sql: ${TABLE}."ENGAGIO_WEB_VISITS_C" ;;
  }

  dimension: engagio_web_visits_last_3_months_c {
    type: number
    sql: ${TABLE}."ENGAGIO_WEB_VISITS_LAST_3_MONTHS_C" ;;
  }

  dimension: enterprise_df_account_score_c {
    type: string
    sql: ${TABLE}."ENTERPRISE_DF_ACCOUNT_SCORE_C" ;;
  }

  dimension: esp_c {
    type: string
    sql: ${TABLE}."ESP_C" ;;
  }

  dimension: esp_max_projected_volume_c {
    type: string
    sql: ${TABLE}."ESP_MAX_PROJECTED_VOLUME_C" ;;
  }

  dimension: estimated_subscriber_base_c {
    type: number
    sql: ${TABLE}."ESTIMATED_SUBSCRIBER_BASE_C" ;;
  }

  dimension: external_technical_contact_c {
    type: string
    sql: ${TABLE}."EXTERNAL_TECHNICAL_CONTACT_C" ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}."FAX" ;;
  }

  dimension: fcio_1_domain_in_sync_c {
    type: yesno
    sql: ${TABLE}."FCIO_1_DOMAIN_IN_SYNC_C" ;;
  }

  dimension: fcio_1_domain_key_c {
    type: string
    sql: ${TABLE}."FCIO_1_DOMAIN_KEY_C" ;;
  }

  dimension_group: fcio_1_domain_last_updated_at_c {
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
    sql: CAST(${TABLE}."FCIO_1_DOMAIN_LAST_UPDATED_AT_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: fcio_1_industry_code_c {
    type: string
    sql: ${TABLE}."FCIO_1_INDUSTRY_CODE_C" ;;
  }

  dimension: fcio_1_industry_taxonomy_c {
    type: string
    sql: ${TABLE}."FCIO_1_INDUSTRY_TAXONOMY_C" ;;
  }

  dimension: fcio_1_routing_rule_c {
    type: string
    sql: ${TABLE}."FCIO_1_ROUTING_RULE_C" ;;
  }

  dimension: fcio_1_territory_c {
    type: string
    sql: ${TABLE}."FCIO_1_TERRITORY_C" ;;
  }

  dimension: fcio_1_ultimate_parent_c {
    type: string
    sql: ${TABLE}."FCIO_1_ULTIMATE_PARENT_C" ;;
  }

  dimension: fcio_1_ultimate_parent_key_c {
    type: string
    sql: ${TABLE}."FCIO_1_ULTIMATE_PARENT_KEY_C" ;;
  }

  dimension: fit_c {
    type: string
    sql: ${TABLE}."FIT_C" ;;
  }

  dimension: fit_score_bad_c {
    type: number
    sql: ${TABLE}."FIT_SCORE_BAD_C" ;;
  }

  dimension: fit_score_estimate_c {
    type: number
    sql: ${TABLE}."FIT_SCORE_ESTIMATE_C" ;;
  }

  dimension: fit_score_good_c {
    type: number
    sql: ${TABLE}."FIT_SCORE_GOOD_C" ;;
  }

  dimension: fit_score_great_c {
    type: number
    sql: ${TABLE}."FIT_SCORE_GREAT_C" ;;
  }

  dimension: fy_20_account_score_c {
    type: number
    sql: ${TABLE}."FY_20_ACCOUNT_SCORE_C" ;;
  }

  dimension: fy_22_market_segment_c {
    type: string
    sql: ${TABLE}."FY_22_MARKET_SEGMENT_C" ;;
  }

  dimension: g_2_crowd_list_4_2020_c {
    type: yesno
    sql: ${TABLE}."G_2_CROWD_LIST_4_2020_C" ;;
  }

  dimension: g_2_intent_score_c {
    type: number
    sql: ${TABLE}."G_2_INTENT_SCORE_C" ;;
  }

  dimension: gm_at_close_c {
    type: number
    sql: ${TABLE}."GM_AT_CLOSE_C" ;;
  }

  dimension: growth_top_10_c {
    type: yesno
    sql: ${TABLE}."GROWTH_TOP_10_C" ;;
  }

  dimension: gu_lsid_c {
    type: string
    sql: ${TABLE}."GU_LSID_C" ;;
  }

  dimension: has_demo_environment_c {
    type: yesno
    sql: ${TABLE}."HAS_DEMO_ENVIRONMENT_C" ;;
  }

  dimension: holdover_c {
    type: yesno
    sql: ${TABLE}."HOLDOVER_C" ;;
  }

  dimension: holdover_june_fy_21_ae_c {
    type: yesno
    sql: ${TABLE}."HOLDOVER_JUNE_FY_21_AE_C" ;;
  }

  dimension: holdover_june_fy_21_sdr_c {
    type: yesno
    sql: ${TABLE}."HOLDOVER_JUNE_FY_21_SDR_C" ;;
  }

  dimension: ia_manager_c {
    type: string
    sql: ${TABLE}."IA_MANAGER_C" ;;
  }

  dimension: implementation_architect_c {
    type: string
    sql: ${TABLE}."IMPLEMENTATION_ARCHITECT_C" ;;
  }

  dimension: implementation_manager_c {
    type: string
    sql: ${TABLE}."IMPLEMENTATION_MANAGER_C" ;;
  }

  dimension: implementation_package_c {
    type: string
    sql: ${TABLE}."IMPLEMENTATION_PACKAGE_C" ;;
  }

  dimension: implementation_status_c {
    type: string
    sql: ${TABLE}."IMPLEMENTATION_STATUS_C" ;;
  }

  dimension: in_app_c {
    type: yesno
    sql: ${TABLE}."IN_APP_C" ;;
  }

  dimension: incorrect_territory_last_requested_by_c {
    type: string
    sql: ${TABLE}."INCORRECT_TERRITORY_LAST_REQUESTED_BY_C" ;;
  }

  dimension: incorrect_territory_segment_c {
    type: yesno
    sql: ${TABLE}."INCORRECT_TERRITORY_SEGMENT_C" ;;
  }

  dimension_group: incorrect_territory_segment_last_request_c {
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
    sql: CAST(${TABLE}."INCORRECT_TERRITORY_SEGMENT_LAST_REQUEST_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}."INDUSTRY" ;;
  }

  dimension: integration_status_c {
    type: string
    sql: ${TABLE}."INTEGRATION_STATUS_C" ;;
  }

  dimension: integrations_c {
    type: string
    sql: ${TABLE}."INTEGRATIONS_C" ;;
  }

  dimension: invoice_age_bucket_status_c {
    type: string
    sql: ${TABLE}."INVOICE_AGE_BUCKET_STATUS_C" ;;
  }

  dimension: invoice_max_days_past_due_c {
    type: number
    sql: ${TABLE}."INVOICE_MAX_DAYS_PAST_DUE_C" ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}."IS_DELETED" ;;
  }

  dimension: is_excluded_from_realign {
    type: yesno
    sql: ${TABLE}."IS_EXCLUDED_FROM_REALIGN" ;;
  }

  dimension: iterable_cluster_id_c {
    type: string
    sql: ${TABLE}."ITERABLE_CLUSTER_ID_C" ;;
  }

  dimension: iterable_org_id_c {
    type: string
    sql: ${TABLE}."ITERABLE_ORG_ID_C" ;;
  }

  dimension: jbcxm_customer_info_c {
    type: string
    sql: ${TABLE}."JBCXM_CUSTOMER_INFO_C" ;;
  }

  dimension: jigsaw {
    type: string
    sql: ${TABLE}."JIGSAW" ;;
  }

  dimension: jigsaw_company_id {
    type: string
    sql: ${TABLE}."JIGSAW_COMPANY_ID" ;;
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

  dimension_group: last_activity_date_c {
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
    sql: ${TABLE}."LAST_ACTIVITY_DATE_C" ;;
  }

  dimension_group: last_activity_date_leads_c {
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
    sql: CAST(${TABLE}."LAST_ACTIVITY_DATE_LEADS_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: last_activity_from_contacts_c {
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
    sql: ${TABLE}."LAST_ACTIVITY_FROM_CONTACTS_C" ;;
  }

  dimension: last_activity_user_c {
    type: string
    sql: ${TABLE}."LAST_ACTIVITY_USER_C" ;;
  }

  dimension: last_bill_amount_arr_c {
    type: number
    sql: ${TABLE}."LAST_BILL_AMOUNT_ARR_C" ;;
  }

  dimension: last_bill_amount_c {
    type: number
    sql: ${TABLE}."LAST_BILL_AMOUNT_C" ;;
  }

  dimension_group: last_bill_date_c {
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
    sql: ${TABLE}."LAST_BILL_DATE_C" ;;
  }

  dimension: last_bill_overage_amount_c {
    type: number
    sql: ${TABLE}."LAST_BILL_OVERAGE_AMOUNT_C" ;;
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

  dimension: lean_data_ld_email_domain_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_LD_EMAIL_DOMAIN_C" ;;
  }

  dimension: lean_data_ld_email_domains_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_LD_EMAIL_DOMAINS_C" ;;
  }

  dimension: lean_data_reporting_customer_c {
    type: yesno
    sql: ${TABLE}."LEAN_DATA_REPORTING_CUSTOMER_C" ;;
  }

  dimension: lean_data_reporting_has_opportunity_c {
    type: yesno
    sql: ${TABLE}."LEAN_DATA_REPORTING_HAS_OPPORTUNITY_C" ;;
  }

  dimension_group: lean_data_reporting_last_marketing_touch_date_c {
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
    sql: CAST(${TABLE}."LEAN_DATA_REPORTING_LAST_MARKETING_TOUCH_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: lean_data_reporting_last_sales_touch_date_c {
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
    sql: CAST(${TABLE}."LEAN_DATA_REPORTING_LAST_SALES_TOUCH_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: lean_data_reporting_recent_marketing_touches_c {
    type: number
    sql: ${TABLE}."LEAN_DATA_REPORTING_RECENT_MARKETING_TOUCHES_C" ;;
  }

  dimension: lean_data_reporting_target_account_c {
    type: yesno
    sql: ${TABLE}."LEAN_DATA_REPORTING_TARGET_ACCOUNT_C" ;;
  }

  dimension: lean_data_reporting_total_leads_and_contacts_c {
    type: number
    sql: ${TABLE}."LEAN_DATA_REPORTING_TOTAL_LEADS_AND_CONTACTS_C" ;;
  }

  dimension: lean_data_reporting_total_marketing_touches_c {
    type: number
    sql: ${TABLE}."LEAN_DATA_REPORTING_TOTAL_MARKETING_TOUCHES_C" ;;
  }

  dimension: lean_data_reporting_total_sales_touches_c {
    type: number
    sql: ${TABLE}."LEAN_DATA_REPORTING_TOTAL_SALES_TOUCHES_C" ;;
  }

  dimension: lean_data_routing_action_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_ROUTING_ACTION_C" ;;
  }

  dimension: lean_data_scenario_1_owner_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_SCENARIO_1_OWNER_C" ;;
  }

  dimension: lean_data_scenario_2_owner_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_SCENARIO_2_OWNER_C" ;;
  }

  dimension: lean_data_scenario_3_owner_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_SCENARIO_3_OWNER_C" ;;
  }

  dimension: lean_data_scenario_4_owner_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_SCENARIO_4_OWNER_C" ;;
  }

  dimension: lean_data_search_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_SEARCH_C" ;;
  }

  dimension: lean_data_sla_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_SLA_C" ;;
  }

  dimension: lean_data_tag_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_TAG_C" ;;
  }

  dimension: lid_linked_in_company_id_c {
    type: string
    sql: ${TABLE}."LID_LINKED_IN_COMPANY_ID_C" ;;
  }

  dimension: linked_in_url_c {
    type: string
    sql: ${TABLE}."LINKED_IN_URL_C" ;;
  }

  dimension: linkedin_si_company_profile_c {
    type: string
    sql: ${TABLE}."LINKEDIN_SI_COMPANY_PROFILE_C" ;;
  }

  dimension: live_chat_free_8_29_19_c {
    type: yesno
    sql: ${TABLE}."LIVE_CHAT_FREE_8_29_19_C" ;;
  }

  dimension: logo_permission_c {
    type: string
    sql: ${TABLE}."LOGO_PERMISSION_C" ;;
  }

  dimension: ls_company_c {
    type: string
    sql: ${TABLE}."LS_COMPANY_C" ;;
  }

  dimension: ls_company_city_c {
    type: string
    sql: ${TABLE}."LS_COMPANY_CITY_C" ;;
  }

  dimension: ls_company_country_c {
    type: string
    sql: ${TABLE}."LS_COMPANY_COUNTRY_C" ;;
  }

  dimension: ls_company_description_c {
    type: string
    sql: ${TABLE}."LS_COMPANY_DESCRIPTION_C" ;;
  }

  dimension: ls_company_industry_c {
    type: string
    sql: ${TABLE}."LS_COMPANY_INDUSTRY_C" ;;
  }

  dimension: ls_company_linked_in_c {
    type: string
    sql: ${TABLE}."LS_COMPANY_LINKED_IN_C" ;;
  }

  dimension: ls_company_naics_c {
    type: string
    sql: ${TABLE}."LS_COMPANY_NAICS_C" ;;
  }

  dimension: ls_company_ownership_c {
    type: string
    sql: ${TABLE}."LS_COMPANY_OWNERSHIP_C" ;;
  }

  dimension: ls_company_phone_c {
    type: string
    sql: ${TABLE}."LS_COMPANY_PHONE_C" ;;
  }

  dimension: ls_company_revenue_c {
    type: number
    sql: ${TABLE}."LS_COMPANY_REVENUE_C" ;;
  }

  dimension: ls_company_revenue_range_c {
    type: string
    sql: ${TABLE}."LS_COMPANY_REVENUE_RANGE_C" ;;
  }

  dimension: ls_company_score_c {
    type: number
    sql: ${TABLE}."LS_COMPANY_SCORE_C" ;;
  }

  dimension: ls_company_sic_c {
    type: string
    sql: ${TABLE}."LS_COMPANY_SIC_C" ;;
  }

  dimension: ls_company_size_c {
    type: number
    sql: ${TABLE}."LS_COMPANY_SIZE_C" ;;
  }

  dimension: ls_company_size_range_c {
    type: string
    sql: ${TABLE}."LS_COMPANY_SIZE_RANGE_C" ;;
  }

  dimension: ls_company_state_c {
    type: string
    sql: ${TABLE}."LS_COMPANY_STATE_C" ;;
  }

  dimension: ls_company_street_c {
    type: string
    sql: ${TABLE}."LS_COMPANY_STREET_C" ;;
  }

  dimension: ls_company_sub_industry_c {
    type: string
    sql: ${TABLE}."LS_COMPANY_SUB_INDUSTRY_C" ;;
  }

  dimension: ls_company_website_c {
    type: string
    sql: ${TABLE}."LS_COMPANY_WEBSITE_C" ;;
  }

  dimension: ls_company_zipcode_c {
    type: string
    sql: ${TABLE}."LS_COMPANY_ZIPCODE_C" ;;
  }

  dimension: ls_du_company_city_c {
    type: string
    sql: ${TABLE}."LS_DU_COMPANY_CITY_C" ;;
  }

  dimension: ls_du_company_country_c {
    type: string
    sql: ${TABLE}."LS_DU_COMPANY_COUNTRY_C" ;;
  }

  dimension: ls_du_company_name_c {
    type: string
    sql: ${TABLE}."LS_DU_COMPANY_NAME_C" ;;
  }

  dimension: ls_du_company_phone_c {
    type: string
    sql: ${TABLE}."LS_DU_COMPANY_PHONE_C" ;;
  }

  dimension: ls_du_company_revenue_c {
    type: number
    sql: ${TABLE}."LS_DU_COMPANY_REVENUE_C" ;;
  }

  dimension: ls_du_company_revenue_range_c {
    type: string
    sql: ${TABLE}."LS_DU_COMPANY_REVENUE_RANGE_C" ;;
  }

  dimension: ls_du_company_size_c {
    type: number
    sql: ${TABLE}."LS_DU_COMPANY_SIZE_C" ;;
  }

  dimension: ls_du_company_size_range_c {
    type: string
    sql: ${TABLE}."LS_DU_COMPANY_SIZE_RANGE_C" ;;
  }

  dimension: ls_du_company_state_c {
    type: string
    sql: ${TABLE}."LS_DU_COMPANY_STATE_C" ;;
  }

  dimension: ls_du_company_street_c {
    type: string
    sql: ${TABLE}."LS_DU_COMPANY_STREET_C" ;;
  }

  dimension: ls_du_company_website_c {
    type: string
    sql: ${TABLE}."LS_DU_COMPANY_WEBSITE_C" ;;
  }

  dimension: ls_du_company_zipcode_c {
    type: string
    sql: ${TABLE}."LS_DU_COMPANY_ZIPCODE_C" ;;
  }

  dimension: ls_du_primary_naics_c {
    type: string
    sql: ${TABLE}."LS_DU_PRIMARY_NAICS_C" ;;
  }

  dimension: ls_du_primary_sic_c {
    type: string
    sql: ${TABLE}."LS_DU_PRIMARY_SIC_C" ;;
  }

  dimension: ls_gu_company_city_c {
    type: string
    sql: ${TABLE}."LS_GU_COMPANY_CITY_C" ;;
  }

  dimension: ls_gu_company_country_c {
    type: string
    sql: ${TABLE}."LS_GU_COMPANY_COUNTRY_C" ;;
  }

  dimension: ls_gu_company_name_c {
    type: string
    sql: ${TABLE}."LS_GU_COMPANY_NAME_C" ;;
  }

  dimension: ls_gu_company_phone_c {
    type: string
    sql: ${TABLE}."LS_GU_COMPANY_PHONE_C" ;;
  }

  dimension: ls_gu_company_revenue_c {
    type: number
    sql: ${TABLE}."LS_GU_COMPANY_REVENUE_C" ;;
  }

  dimension: ls_gu_company_revenue_range_c {
    type: string
    sql: ${TABLE}."LS_GU_COMPANY_REVENUE_RANGE_C" ;;
  }

  dimension: ls_gu_company_size_c {
    type: number
    sql: ${TABLE}."LS_GU_COMPANY_SIZE_C" ;;
  }

  dimension: ls_gu_company_size_range_c {
    type: string
    sql: ${TABLE}."LS_GU_COMPANY_SIZE_RANGE_C" ;;
  }

  dimension: ls_gu_company_state_c {
    type: string
    sql: ${TABLE}."LS_GU_COMPANY_STATE_C" ;;
  }

  dimension: ls_gu_company_street_c {
    type: string
    sql: ${TABLE}."LS_GU_COMPANY_STREET_C" ;;
  }

  dimension: ls_gu_company_website_c {
    type: string
    sql: ${TABLE}."LS_GU_COMPANY_WEBSITE_C" ;;
  }

  dimension: ls_gu_company_zipcode_c {
    type: string
    sql: ${TABLE}."LS_GU_COMPANY_ZIPCODE_C" ;;
  }

  dimension: ls_gu_primary_naics_c {
    type: string
    sql: ${TABLE}."LS_GU_PRIMARY_NAICS_C" ;;
  }

  dimension: ls_gu_primary_sic_c {
    type: string
    sql: ${TABLE}."LS_GU_PRIMARY_SIC_C" ;;
  }

  dimension: ls_max_fit_score_c {
    type: string
    sql: ${TABLE}."LS_MAX_FIT_SCORE_C" ;;
  }

  dimension: ls_site_company_city_c {
    type: string
    sql: ${TABLE}."LS_SITE_COMPANY_CITY_C" ;;
  }

  dimension: ls_site_company_country_c {
    type: string
    sql: ${TABLE}."LS_SITE_COMPANY_COUNTRY_C" ;;
  }

  dimension: ls_site_company_name_c {
    type: string
    sql: ${TABLE}."LS_SITE_COMPANY_NAME_C" ;;
  }

  dimension: ls_site_company_phone_c {
    type: string
    sql: ${TABLE}."LS_SITE_COMPANY_PHONE_C" ;;
  }

  dimension: ls_site_company_revenue_c {
    type: number
    sql: ${TABLE}."LS_SITE_COMPANY_REVENUE_C" ;;
  }

  dimension: ls_site_company_revenue_range_c {
    type: string
    sql: ${TABLE}."LS_SITE_COMPANY_REVENUE_RANGE_C" ;;
  }

  dimension: ls_site_company_size_c {
    type: number
    sql: ${TABLE}."LS_SITE_COMPANY_SIZE_C" ;;
  }

  dimension: ls_site_company_size_range_c {
    type: string
    sql: ${TABLE}."LS_SITE_COMPANY_SIZE_RANGE_C" ;;
  }

  dimension: ls_site_company_state_c {
    type: string
    sql: ${TABLE}."LS_SITE_COMPANY_STATE_C" ;;
  }

  dimension: ls_site_company_street_c {
    type: string
    sql: ${TABLE}."LS_SITE_COMPANY_STREET_C" ;;
  }

  dimension: ls_site_company_website_c {
    type: string
    sql: ${TABLE}."LS_SITE_COMPANY_WEBSITE_C" ;;
  }

  dimension: ls_site_company_zipcode_c {
    type: string
    sql: ${TABLE}."LS_SITE_COMPANY_ZIPCODE_C" ;;
  }

  dimension: ls_site_is_subsidiary_c {
    type: string
    sql: ${TABLE}."LS_SITE_IS_SUBSIDIARY_C" ;;
  }

  dimension: ls_site_primary_naics_c {
    type: string
    sql: ${TABLE}."LS_SITE_PRIMARY_NAICS_C" ;;
  }

  dimension: ls_site_primary_sic_c {
    type: string
    sql: ${TABLE}."LS_SITE_PRIMARY_SIC_C" ;;
  }

  dimension: lsid_c {
    type: string
    sql: ${TABLE}."LSID_C" ;;
  }

  dimension: manual_address_change_c {
    type: yesno
    sql: ${TABLE}."MANUAL_ADDRESS_CHANGE_C" ;;
  }

  dimension: market_segment_of_parents_c {
    type: string
    sql: ${TABLE}."MARKET_SEGMENT_OF_PARENTS_C" ;;
  }

  dimension: market_segment_override_c {
    type: string
    sql: ${TABLE}."MARKET_SEGMENT_OVERRIDE_C" ;;
  }

  dimension: market_segment_sales_ops_c {
    type: string
    sql: ${TABLE}."MARKET_SEGMENT_SALES_OPS_C" ;;
  }

  dimension: marketing_engagement_minutes_30_days_c {
    type: number
    sql: ${TABLE}."MARKETING_ENGAGEMENT_MINUTES_30_DAYS_C" ;;
  }

  dimension: marketing_engagement_minutes_7_days_c {
    type: number
    sql: ${TABLE}."MARKETING_ENGAGEMENT_MINUTES_7_DAYS_C" ;;
  }

  dimension: marketing_engagement_minutes_90_d_c {
    type: number
    sql: ${TABLE}."MARKETING_ENGAGEMENT_MINUTES_90_D_C" ;;
  }

  dimension: marketing_engagement_minutes_all_time_c {
    type: number
    sql: ${TABLE}."MARKETING_ENGAGEMENT_MINUTES_ALL_TIME_C" ;;
  }

  dimension: marketing_event_c {
    type: string
    sql: ${TABLE}."MARKETING_EVENT_C" ;;
  }

  dimension: marketing_referenceable_c {
    type: yesno
    sql: ${TABLE}."MARKETING_REFERENCEABLE_C" ;;
  }

  dimension: master_account_c {
    type: string
    sql: ${TABLE}."MASTER_ACCOUNT_C" ;;
  }

  dimension: master_record_id {
    type: string
    sql: ${TABLE}."MASTER_RECORD_ID" ;;
  }

  dimension: mdr_c {
    type: string
    sql: ${TABLE}."MDR_C" ;;
  }

  dimension: mid_market_c {
    type: yesno
    sql: ${TABLE}."MID_MARKET_C" ;;
  }

  dimension: mk_customer_fit_score_c {
    type: number
    sql: ${TABLE}."MK_CUSTOMER_FIT_SCORE_C" ;;
  }

  dimension: mk_customer_fit_segment_c {
    type: string
    sql: ${TABLE}."MK_CUSTOMER_FIT_SEGMENT_C" ;;
  }

  dimension: mk_customer_fit_signals_c {
    type: string
    sql: ${TABLE}."MK_CUSTOMER_FIT_SIGNALS_C" ;;
  }

  dimension: mobile_app_c {
    type: yesno
    sql: ${TABLE}."MOBILE_APP_C" ;;
  }

  dimension: month_to_month_c {
    type: yesno
    sql: ${TABLE}."MONTH_TO_MONTH_C" ;;
  }

  dimension: monthly_emails_c {
    type: number
    sql: ${TABLE}."MONTHLY_EMAILS_C" ;;
  }

  dimension_group: most_overdue_invoice_due_date_c {
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
    sql: ${TABLE}."MOST_OVERDUE_INVOICE_DUE_DATE_C" ;;
  }

  dimension_group: most_recent_mql_date_c {
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
    sql: CAST(${TABLE}."MOST_RECENT_MQL_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: most_recent_mql_type_c {
    type: string
    sql: ${TABLE}."MOST_RECENT_MQL_TYPE_C" ;;
  }

  dimension: most_recent_mrr_c {
    type: number
    sql: ${TABLE}."MOST_RECENT_MRR_C" ;;
  }

  dimension: mrr_at_close_c {
    type: number
    sql: ${TABLE}."MRR_AT_CLOSE_C" ;;
  }

  dimension: naics_code_level_3_c {
    type: string
    sql: ${TABLE}."NAICS_CODE_LEVEL_3_C" ;;
  }

  dimension: naics_code_level_4_c {
    type: string
    sql: ${TABLE}."NAICS_CODE_LEVEL_4_C" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: named_account_c {
    type: yesno
    sql: ${TABLE}."NAMED_ACCOUNT_C" ;;
  }

  dimension: new_100_k_accounts_c {
    type: yesno
    sql: ${TABLE}."NEW_100_K_ACCOUNTS_C" ;;
  }

  dimension: new_york_1_c {
    type: yesno
    sql: ${TABLE}."NEW_YORK_1_C" ;;
  }

  dimension: new_york_2_c {
    type: yesno
    sql: ${TABLE}."NEW_YORK_2_C" ;;
  }

  dimension: new_york_3_c {
    type: yesno
    sql: ${TABLE}."NEW_YORK_3_C" ;;
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

  dimension: nor_cal_1_c {
    type: yesno
    sql: ${TABLE}."NOR_CAL_1_C" ;;
  }

  dimension: nor_cal_2_c {
    type: yesno
    sql: ${TABLE}."NOR_CAL_2_C" ;;
  }

  dimension: notes_c {
    type: string
    sql: ${TABLE}."NOTES_C" ;;
  }

  dimension: number_of_contacts_c {
    type: number
    sql: ${TABLE}."NUMBER_OF_CONTACTS_C" ;;
  }

  dimension: number_of_dedicated_ips_c {
    type: number
    sql: ${TABLE}."NUMBER_OF_DEDICATED_IPS_C" ;;
  }

  dimension: number_of_employees {
    type: number
    sql: ${TABLE}."NUMBER_OF_EMPLOYEES" ;;
  }

  dimension_group: onboarding_completion_date_c {
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
    sql: ${TABLE}."ONBOARDING_COMPLETION_DATE_C" ;;
  }

  dimension_group: onboarding_end_date_c {
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
    sql: ${TABLE}."ONBOARDING_END_DATE_C" ;;
  }

  dimension: onboarding_package_c {
    type: string
    sql: ${TABLE}."ONBOARDING_PACKAGE_C" ;;
  }

  dimension_group: onboarding_start_date_c {
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
    sql: ${TABLE}."ONBOARDING_START_DATE_C" ;;
  }

  dimension_group: opportunity_accepted_date_c {
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
    sql: ${TABLE}."OPPORTUNITY_ACCEPTED_DATE_C" ;;
  }

  dimension_group: opportunity_close_date_c {
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
    sql: ${TABLE}."OPPORTUNITY_CLOSE_DATE_C" ;;
  }

  dimension: opportunity_stage_c {
    type: string
    sql: ${TABLE}."OPPORTUNITY_STAGE_C" ;;
  }

  dimension: ops_approved_data_adjustment_c {
    type: yesno
    sql: ${TABLE}."OPS_APPROVED_DATA_ADJUSTMENT_C" ;;
  }

  dimension: ops_override_c {
    type: yesno
    sql: ${TABLE}."OPS_OVERRIDE_C" ;;
  }

  dimension: other_integrations_c {
    type: string
    sql: ${TABLE}."OTHER_INTEGRATIONS_C" ;;
  }

  dimension: override_territory_c {
    type: yesno
    sql: ${TABLE}."OVERRIDE_TERRITORY_C" ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}."OWNER_ID" ;;
  }

  dimension: ownership {
    type: string
    sql: ${TABLE}."OWNERSHIP" ;;
  }

  dimension: parent_id {
    type: string
    sql: ${TABLE}."PARENT_ID" ;;
  }

  dimension: partner_client_c {
    type: string
    sql: ${TABLE}."PARTNER_CLIENT_C" ;;
  }

  dimension: partner_client_old_c {
    type: string
    sql: ${TABLE}."PARTNER_CLIENT_OLD_C" ;;
  }

  dimension: partner_mnda_signed_c {
    type: yesno
    sql: ${TABLE}."PARTNER_MNDA_SIGNED_C" ;;
  }

  dimension: partner_revenue_share_agreement_signed_c {
    type: yesno
    sql: ${TABLE}."PARTNER_REVENUE_SHARE_AGREEMENT_SIGNED_C" ;;
  }

  dimension: partner_revenue_share_percentage_c {
    type: number
    sql: ${TABLE}."PARTNER_REVENUE_SHARE_PERCENTAGE_C" ;;
  }

  dimension: partner_stack_lead_key_c {
    type: string
    sql: ${TABLE}."PARTNER_STACK_LEAD_KEY_C" ;;
  }

  dimension: partner_sub_type_c {
    type: string
    sql: ${TABLE}."PARTNER_SUB_TYPE_C" ;;
  }

  dimension: partner_type_c {
    type: string
    sql: ${TABLE}."PARTNER_TYPE_C" ;;
  }

  dimension: people_score_maturity_model_c {
    type: number
    sql: ${TABLE}."PEOPLE_SCORE_MATURITY_MODEL_C" ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."PHONE" ;;
  }

  dimension: photo_url {
    type: string
    sql: ${TABLE}."PHOTO_URL" ;;
  }

  dimension: point_of_view_c {
    type: string
    sql: ${TABLE}."POINT_OF_VIEW_C" ;;
  }

  dimension: pre_event_tag_mops_c {
    type: string
    sql: ${TABLE}."PRE_EVENT_TAG_MOPS_C" ;;
  }

  dimension: predicted_deal_size_c {
    type: number
    sql: ${TABLE}."PREDICTED_DEAL_SIZE_C" ;;
  }

  dimension: previous_esp_c {
    type: string
    sql: ${TABLE}."PREVIOUS_ESP_C" ;;
  }

  dimension: previous_esp_old_c {
    type: string
    sql: ${TABLE}."PREVIOUS_ESP_OLD_C" ;;
  }

  dimension: previous_tech_stack_c {
    type: string
    sql: ${TABLE}."PREVIOUS_TECH_STACK_C" ;;
  }

  dimension: primary_strategic_parent_c {
    type: string
    sql: ${TABLE}."PRIMARY_STRATEGIC_PARENT_C" ;;
  }

  dimension: primary_value_driver_c {
    type: string
    sql: ${TABLE}."PRIMARY_VALUE_DRIVER_C" ;;
  }

  dimension: priority_c {
    type: string
    sql: ${TABLE}."PRIORITY_C" ;;
  }

  dimension: priority_recommended_pasted_c {
    type: string
    sql: ${TABLE}."PRIORITY_RECOMMENDED_PASTED_C" ;;
  }

  dimension: professional_services_agency_partner_c {
    type: string
    sql: ${TABLE}."PROFESSIONAL_SERVICES_AGENCY_PARTNER_C" ;;
  }

  dimension: project_manager_c {
    type: string
    sql: ${TABLE}."PROJECT_MANAGER_C" ;;
  }

  dimension: ps_manager_c {
    type: string
    sql: ${TABLE}."PS_MANAGER_C" ;;
  }

  dimension: pspm_manager_c {
    type: string
    sql: ${TABLE}."PSPM_MANAGER_C" ;;
  }

  dimension: push_c {
    type: string
    sql: ${TABLE}."PUSH_C" ;;
  }

  dimension: push_checkbox_c {
    type: yesno
    sql: ${TABLE}."PUSH_CHECKBOX_C" ;;
  }

  dimension: rating {
    type: string
    sql: ${TABLE}."RATING" ;;
  }

  dimension: record_processed_c {
    type: yesno
    sql: ${TABLE}."RECORD_PROCESSED_C" ;;
  }

  dimension: record_type_id {
    type: string
    sql: ${TABLE}."RECORD_TYPE_ID" ;;
  }

  dimension: region_based_c {
    type: string
    sql: ${TABLE}."REGION_BASED_C" ;;
  }

  dimension: region_c {
    type: string
    sql: ${TABLE}."REGION_C" ;;
  }

  dimension: region_new_c {
    type: string
    sql: ${TABLE}."REGION_NEW_C" ;;
  }

  dimension: reserve_priority_cohort_c {
    type: string
    sql: ${TABLE}."RESERVE_PRIORITY_COHORT_C" ;;
  }

  dimension: round_robin_c {
    type: yesno
    sql: ${TABLE}."ROUND_ROBIN_C" ;;
  }

  dimension: sa_active_c {
    type: yesno
    sql: ${TABLE}."SA_ACTIVE_C" ;;
  }

  dimension: sales_engagement_minutes_30_days_c {
    type: number
    sql: ${TABLE}."SALES_ENGAGEMENT_MINUTES_30_DAYS_C" ;;
  }

  dimension: sales_engagement_minutes_3_mo_c {
    type: number
    sql: ${TABLE}."SALES_ENGAGEMENT_MINUTES_3_MO_C" ;;
  }

  dimension: sales_engagement_minutes_7_days_c {
    type: number
    sql: ${TABLE}."SALES_ENGAGEMENT_MINUTES_7_DAYS_C" ;;
  }

  dimension: sales_engagement_minutes_all_time_c {
    type: number
    sql: ${TABLE}."SALES_ENGAGEMENT_MINUTES_ALL_TIME_C" ;;
  }

  dimension: sales_ops_notes_segment_territory_c {
    type: string
    sql: ${TABLE}."SALES_OPS_NOTES_SEGMENT_TERRITORY_C" ;;
  }

  dimension: sales_referenceable_c {
    type: yesno
    sql: ${TABLE}."SALES_REFERENCEABLE_C" ;;
  }

  dimension: sales_rep_c {
    type: string
    sql: ${TABLE}."SALES_REP_C" ;;
  }

  dimension: sdr_c {
    type: string
    sql: ${TABLE}."SDR_C" ;;
  }

  dimension: sdr_holdover_c {
    type: yesno
    sql: ${TABLE}."SDR_HOLDOVER_C" ;;
  }

  dimension: sdr_pasted_c {
    type: string
    sql: ${TABLE}."SDR_PASTED_C" ;;
  }

  dimension: sdr_research_c {
    type: string
    sql: ${TABLE}."SDR_RESEARCH_C" ;;
  }

  dimension: sdr_strategic_c {
    type: yesno
    sql: ${TABLE}."SDR_STRATEGIC_C" ;;
  }

  dimension: sdr_target_c {
    type: yesno
    sql: ${TABLE}."SDR_TARGET_C" ;;
  }

  dimension: sdr_top_target_c {
    type: yesno
    sql: ${TABLE}."SDR_TOP_TARGET_C" ;;
  }

  dimension: security_exhibit_included_c {
    type: yesno
    sql: ${TABLE}."SECURITY_EXHIBIT_INCLUDED_C" ;;
  }

  dimension: send_red_account_alert_c {
    type: yesno
    sql: ${TABLE}."SEND_RED_ACCOUNT_ALERT_C" ;;
  }

  dimension: senior_enterprise_named_account_c {
    type: yesno
    sql: ${TABLE}."SENIOR_ENTERPRISE_NAMED_ACCOUNT_C" ;;
  }

  dimension: shipping_city {
    type: string
    sql: ${TABLE}."SHIPPING_CITY" ;;
  }

  dimension: shipping_country {
    type: string
    sql: ${TABLE}."SHIPPING_COUNTRY" ;;
  }

  dimension: shipping_country_code {
    type: string
    sql: ${TABLE}."SHIPPING_COUNTRY_CODE" ;;
  }

  dimension: shipping_geocode_accuracy {
    type: string
    sql: ${TABLE}."SHIPPING_GEOCODE_ACCURACY" ;;
  }

  dimension: shipping_latitude {
    type: number
    sql: ${TABLE}."SHIPPING_LATITUDE" ;;
  }

  dimension: shipping_longitude {
    type: number
    sql: ${TABLE}."SHIPPING_LONGITUDE" ;;
  }

  dimension: shipping_postal_code {
    type: string
    sql: ${TABLE}."SHIPPING_POSTAL_CODE" ;;
  }

  dimension: shipping_state {
    type: string
    sql: ${TABLE}."SHIPPING_STATE" ;;
  }

  dimension: shipping_state_code {
    type: string
    sql: ${TABLE}."SHIPPING_STATE_CODE" ;;
  }

  dimension: shipping_street {
    type: string
    sql: ${TABLE}."SHIPPING_STREET" ;;
  }

  dimension: sic {
    type: string
    sql: ${TABLE}."SIC" ;;
  }

  dimension: sic_desc {
    type: string
    sql: ${TABLE}."SIC_DESC" ;;
  }

  dimension: similar_web_monthly_visitors_c {
    type: number
    sql: ${TABLE}."SIMILAR_WEB_MONTHLY_VISITORS_C" ;;
  }

  dimension: similar_web_rank_c {
    type: number
    sql: ${TABLE}."SIMILAR_WEB_RANK_C" ;;
  }

  dimension: site {
    type: string
    sql: ${TABLE}."SITE" ;;
  }

  dimension: site_lsid_c {
    type: string
    sql: ${TABLE}."SITE_LSID_C" ;;
  }

  dimension: sla_terms_c {
    type: string
    sql: ${TABLE}."SLA_TERMS_C" ;;
  }

  dimension: sms_c {
    type: string
    sql: ${TABLE}."SMS_C" ;;
  }

  dimension: sms_checkbox_c {
    type: yesno
    sql: ${TABLE}."SMS_CHECKBOX_C" ;;
  }

  dimension: so_cal_1_c {
    type: yesno
    sql: ${TABLE}."SO_CAL_1_C" ;;
  }

  dimension: so_cal_2_c {
    type: yesno
    sql: ${TABLE}."SO_CAL_2_C" ;;
  }

  dimension: sparkpost_signals_c {
    type: yesno
    sql: ${TABLE}."SPARKPOST_SIGNALS_C" ;;
  }

  dimension: strategic_account_c {
    type: yesno
    sql: ${TABLE}."STRATEGIC_ACCOUNT_C" ;;
  }

  dimension: strategic_parent_c {
    type: yesno
    sql: ${TABLE}."STRATEGIC_PARENT_C" ;;
  }

  dimension: strategy_score_maturity_model_c {
    type: number
    sql: ${TABLE}."STRATEGY_SCORE_MATURITY_MODEL_C" ;;
  }

  dimension: subscriber_base_apptopia_mm_c {
    type: number
    sql: ${TABLE}."SUBSCRIBER_BASE_APPTOPIA_MM_C" ;;
  }

  dimension: subscriber_base_data_vendor_mm_c {
    type: number
    sql: ${TABLE}."SUBSCRIBER_BASE_DATA_VENDOR_MM_C" ;;
  }

  dimension: subscriber_cpm_at_close_c {
    type: number
    sql: ${TABLE}."SUBSCRIBER_CPM_AT_CLOSE_C" ;;
  }

  dimension: subscribers_added_last_month_c {
    type: number
    sql: ${TABLE}."SUBSCRIBERS_ADDED_LAST_MONTH_C" ;;
  }

  dimension: support_hour_end_c {
    type: string
    sql: ${TABLE}."SUPPORT_HOUR_END_C" ;;
  }

  dimension: support_hours_start_c {
    type: string
    sql: ${TABLE}."SUPPORT_HOURS_START_C" ;;
  }

  dimension: support_hours_timezone_c {
    type: string
    sql: ${TABLE}."SUPPORT_HOURS_TIMEZONE_C" ;;
  }

  dimension: support_package_2_c {
    type: string
    sql: ${TABLE}."SUPPORT_PACKAGE_2_C" ;;
  }

  dimension: support_package_c {
    type: string
    sql: ${TABLE}."SUPPORT_PACKAGE_C" ;;
  }

  dimension_group: sync_with_zendesk_manual_c {
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
    sql: ${TABLE}."SYNC_WITH_ZENDESK_MANUAL_C" ;;
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

  dimension: taskray_tr_customer_onboarding_score_c {
    type: number
    sql: ${TABLE}."TASKRAY_TR_CUSTOMER_ONBOARDING_SCORE_C" ;;
  }

  dimension: taskray_tr_desired_outcomes_c {
    type: string
    sql: ${TABLE}."TASKRAY_TR_DESIRED_OUTCOMES_C" ;;
  }

  dimension: technical_notes_c {
    type: string
    sql: ${TABLE}."TECHNICAL_NOTES_C" ;;
  }

  dimension: technographics_built_with_c {
    type: string
    sql: ${TABLE}."TECHNOGRAPHICS_BUILT_WITH_C" ;;
  }

  dimension: technology_score_maturity_model_c {
    type: number
    sql: ${TABLE}."TECHNOLOGY_SCORE_MATURITY_MODEL_C" ;;
  }

  dimension: territory_c {
    type: string
    sql: ${TABLE}."TERRITORY_C" ;;
  }

  dimension: territory_pasted_c {
    type: string
    sql: ${TABLE}."TERRITORY_PASTED_C" ;;
  }

  dimension: theatre_c {
    type: string
    sql: ${TABLE}."THEATRE_C" ;;
  }

  dimension: ticker_symbol {
    type: string
    sql: ${TABLE}."TICKER_SYMBOL" ;;
  }

  dimension: top_150_customer_c {
    type: yesno
    sql: ${TABLE}."TOP_150_CUSTOMER_C" ;;
  }

  dimension: top_500_account_c {
    type: yesno
    sql: ${TABLE}."TOP_500_ACCOUNT_C" ;;
  }

  dimension: top_parent_account_c {
    type: string
    sql: ${TABLE}."TOP_PARENT_ACCOUNT_C" ;;
  }

  dimension: total_outstanding_collections_c {
    type: number
    sql: ${TABLE}."TOTAL_OUTSTANDING_COLLECTIONS_C" ;;
  }

  dimension: transactional_c {
    type: string
    sql: ${TABLE}."TRANSACTIONAL_C" ;;
  }

  dimension: triggered_campaigns_c {
    type: string
    sql: ${TABLE}."TRIGGERED_CAMPAIGNS_C" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  dimension: use_case_score_maturity_model_c {
    type: number
    sql: ${TABLE}."USE_CASE_SCORE_MATURITY_MODEL_C" ;;
  }

  dimension: vertical_c {
    type: string
    sql: ${TABLE}."VERTICAL_C" ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}."WEBSITE" ;;
  }

  dimension: welcome_package_contact_c {
    type: string
    sql: ${TABLE}."WELCOME_PACKAGE_CONTACT_C" ;;
  }

  dimension: will_ny_target_c {
    type: yesno
    sql: ${TABLE}."WILL_NY_TARGET_C" ;;
  }

  dimension: workflows_c {
    type: string
    sql: ${TABLE}."WORKFLOWS_C" ;;
  }

  dimension: wywyn_c {
    type: string
    sql: ${TABLE}."WYWYN_C" ;;
  }

  dimension: x_10_c {
    type: yesno
    sql: ${TABLE}."X_10_C" ;;
  }

  dimension: x_2018_segment_pasted_c {
    type: string
    sql: ${TABLE}."X_2018_SEGMENT_PASTED_C" ;;
  }

  dimension: x_2019_segment_of_parent_c {
    type: string
    sql: ${TABLE}."X_2019_SEGMENT_OF_PARENT_C" ;;
  }

  dimension: x_2019_segment_pasted_c {
    type: string
    sql: ${TABLE}."X_2019_SEGMENT_PASTED_C" ;;
  }

  dimension: x_2020_business_outlook_cs_field_c {
    type: string
    sql: ${TABLE}."X_2020_BUSINESS_OUTLOOK_CS_FIELD_C" ;;
  }

  dimension: zendesk_create_in_zendesk_c {
    type: yesno
    sql: ${TABLE}."ZENDESK_CREATE_IN_ZENDESK_C" ;;
  }

  dimension: zendesk_created_updated_flag_c {
    type: yesno
    sql: ${TABLE}."ZENDESK_CREATED_UPDATED_FLAG_C" ;;
  }

  dimension: zendesk_domain_mapping_c {
    type: string
    sql: ${TABLE}."ZENDESK_DOMAIN_MAPPING_C" ;;
  }

  dimension_group: zendesk_last_sync_date_c {
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
    sql: CAST(${TABLE}."ZENDESK_LAST_SYNC_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: zendesk_last_sync_status_c {
    type: string
    sql: ${TABLE}."ZENDESK_LAST_SYNC_STATUS_C" ;;
  }

  dimension: zendesk_notes_c {
    type: string
    sql: ${TABLE}."ZENDESK_NOTES_C" ;;
  }

  dimension: zendesk_result_c {
    type: string
    sql: ${TABLE}."ZENDESK_RESULT_C" ;;
  }

  dimension: zendesk_tags_c {
    type: string
    sql: ${TABLE}."ZENDESK_TAGS_C" ;;
  }

  dimension: zendesk_zendesk_old_tags_c {
    type: string
    sql: ${TABLE}."ZENDESK_ZENDESK_OLD_TAGS_C" ;;
  }

  dimension: zendesk_zendesk_organization_c {
    type: string
    sql: ${TABLE}."ZENDESK_ZENDESK_ORGANIZATION_C" ;;
  }

  dimension: zendesk_zendesk_organization_id_c {
    type: string
    sql: ${TABLE}."ZENDESK_ZENDESK_ORGANIZATION_ID_C" ;;
  }

  dimension: zendesk_zendesk_outof_sync_c {
    type: yesno
    sql: ${TABLE}."ZENDESK_ZENDESK_OUTOF_SYNC_C" ;;
  }

  dimension: zi_alexa_rank_c {
    type: number
    sql: ${TABLE}."ZI_ALEXA_RANK_C" ;;
  }

  dimension: zi_billing_city_c {
    type: string
    sql: ${TABLE}."ZI_BILLING_CITY_C" ;;
  }

  dimension: zi_billing_country_c {
    type: string
    sql: ${TABLE}."ZI_BILLING_COUNTRY_C" ;;
  }

  dimension: zi_billing_state_c {
    type: string
    sql: ${TABLE}."ZI_BILLING_STATE_C" ;;
  }

  dimension: zi_billing_street_c {
    type: string
    sql: ${TABLE}."ZI_BILLING_STREET_C" ;;
  }

  dimension: zi_billing_zip_code_c {
    type: string
    sql: ${TABLE}."ZI_BILLING_ZIP_CODE_C" ;;
  }

  dimension: zi_business_model_c {
    type: string
    sql: ${TABLE}."ZI_BUSINESS_MODEL_C" ;;
  }

  dimension: zi_company_name_c {
    type: string
    sql: ${TABLE}."ZI_COMPANY_NAME_C" ;;
  }

  dimension: zi_funding_c {
    type: number
    sql: ${TABLE}."ZI_FUNDING_C" ;;
  }

  dimension: zi_headcount_c {
    type: number
    sql: ${TABLE}."ZI_HEADCOUNT_C" ;;
  }

  dimension: zi_marketing_budget_c {
    type: number
    sql: ${TABLE}."ZI_MARKETING_BUDGET_C" ;;
  }

  dimension: zi_number_of_locations_c {
    type: number
    sql: ${TABLE}."ZI_NUMBER_OF_LOCATIONS_C" ;;
  }

  dimension: zi_revenue_c {
    type: number
    sql: ${TABLE}."ZI_REVENUE_C" ;;
  }

  dimension: zi_similarweb_rank_c {
    type: number
    sql: ${TABLE}."ZI_SIMILARWEB_RANK_C" ;;
  }

  dimension: zi_tech_stack_c {
    type: string
    sql: ${TABLE}."ZI_TECH_STACK_C" ;;
  }

  dimension: zi_website_c {
    type: string
    sql: ${TABLE}."ZI_WEBSITE_C" ;;
  }

  dimension: zi_year_founded_c {
    type: number
    sql: ${TABLE}."ZI_YEAR_FOUNDED_C" ;;
  }

  dimension: zisf_company_id_c {
    type: string
    sql: ${TABLE}."ZISF_COMPANY_ID_C" ;;
  }

  dimension: zisf_zoom_clean_status_c {
    type: string
    sql: ${TABLE}."ZISF_ZOOM_CLEAN_STATUS_C" ;;
  }

  dimension: zisf_zoom_id_c {
    type: string
    sql: ${TABLE}."ZISF_ZOOM_ID_C" ;;
  }

  dimension: zisf_zoom_info_complete_status_c {
    type: string
    sql: ${TABLE}."ZISF_ZOOM_INFO_COMPLETE_STATUS_C" ;;
  }

  dimension: zisf_zoom_info_industry_c {
    type: string
    sql: ${TABLE}."ZISF_ZOOM_INFO_INDUSTRY_C" ;;
  }

  dimension_group: zisf_zoom_info_last_clean_run_c {
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
    sql: CAST(${TABLE}."ZISF_ZOOM_INFO_LAST_CLEAN_RUN_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: zisf_zoom_lastupdated_c {
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
    sql: CAST(${TABLE}."ZISF_ZOOM_LASTUPDATED_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: zoom_info_employees_c {
    type: number
    sql: ${TABLE}."ZOOM_INFO_EMPLOYEES_C" ;;
  }

  dimension: zuora_active_c {
    type: string
    sql: ${TABLE}."ZUORA_ACTIVE_C" ;;
  }

  dimension: zuora_customer_priority_c {
    type: string
    sql: ${TABLE}."ZUORA_CUSTOMER_PRIORITY_C" ;;
  }

  dimension: zuora_numberof_locations_c {
    type: number
    sql: ${TABLE}."ZUORA_NUMBEROF_LOCATIONS_C" ;;
  }

  dimension: zuora_sla_c {
    type: string
    sql: ${TABLE}."ZUORA_SLA_C" ;;
  }

  dimension_group: zuora_slaexpiration_date_c {
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
    sql: ${TABLE}."ZUORA_SLAEXPIRATION_DATE_C" ;;
  }

  dimension: zuora_slaserial_number_c {
    type: string
    sql: ${TABLE}."ZUORA_SLASERIAL_NUMBER_C" ;;
  }

  dimension: zuora_upsell_opportunity_c {
    type: string
    sql: ${TABLE}."ZUORA_UPSELL_OPPORTUNITY_C" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, account_name, name]
  }
}
