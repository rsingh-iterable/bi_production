connection: "analytics"

include: "*.view.lkml"

fiscal_month_offset: -11

# include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#

explore: account_changes_monthly {
  label: "Account Changes Monthly"
  view_label: "Account Changes Monthly"
  join: account_dimensions {
    relationship: many_to_one
    sql_on: ${account_dimensions.account_id} = ${account_changes_monthly.sfdc_account_id} ;;
    view_label: "Account Dimensions"
  }
  }


explore: account_changes_quarterly{
  label: "Account Changes Quarterly"
  view_label: "Account Changes Quarterly"
  join: account_dimensions {
    relationship: many_to_one
    sql_on: ${account_dimensions.account_id} = ${account_changes_quarterly.account_id} ;;
    view_label: "Account Dimensions"
  }
  join: account_changes_monthly {
    relationship: many_to_one
    sql_on: ${account_dimensions.account_id} = ${account_changes_monthly.sfdc_account_id} ;;
    view_label: "Account Changes Monthly"
  }

}
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }
