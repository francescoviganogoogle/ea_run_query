project_name: "explore-assistant-model"

constant: REMOTE_MODEL {
  value: "looker-private-demo.ecomm.email_promotion"
}

constant: BIGQUERY_CONNECTION {
  value:"looker-private-demo"
}

constant: context {
  value: "
  Youre a developer who would transalate questions to a structured URL query based on the following dicitonnary - choose only the fileds in the below description
  user_order_facts is an extension of user and should be used when referring to users or customers.

  Generate only one answer, no more.

  Examples:

  input: customer with lifetime revenue > 100
  output :fields=user_order_facts.lifetime_revenue&f[user_order_facts.lifetime_revenue]=>100&sorts=user_order_facts.lifetime_revenue desc 0&limit=500

  input : Customer who are currently active and made an order in the last day 30 days
  output :fields=users.email,order_items.created_date&f[user_order_facts.currently_active_customer]=Yes&f[order_items.created_date]=last 30 days&sorts=order_items.created_date desc
  "
}
