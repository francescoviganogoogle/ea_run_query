project_name: "ea_run_query"

# This is the Looker Connection to a dataset that has the explore_assistant schema.
# Through this connection, the 'explore_assistant' schema with examples, refniement_examples and assistant_sample should all exist.
constant: LOOKER_BIGQUERY_CONNECTION_NAME {
  value: "ea_run_query"
  export: override_required
}

# BQML_REMOTE_CONNECTION_MODEL_ID is the ID of a remote connection to Vertex in BigQuery
# Only necessary for the BigQuery Backend install type.
# Can be left as an empty string for Cloud Function backend installs.
constant: BQML_REMOTE_CONNECTION_MODEL_ID {
  value: "explore_assistant_ea_run_query.explore_assistant_llm"
  export: override_optional
}

# EXPLORE_ASSISTANT_LOGGING_TABLE_NAME is the name of the table that holds the logging data
constant: EXPLORE_ASSISTANT_LOGGING_TABLE_NAME {
  value: "explore_assistant_ea_run_query.explore_assistant_logging"
  export: override_optional
}

# EXPLORE_ASSISTANT_EXAMPLES_TABLE_NAME is the name of the table that holds the example training data
constant: EXPLORE_ASSISTANT_EXAMPLES_TABLE_NAME {
  value: "explore_assistant_ea_run_query.explore_assistant_examples_2"
  export: override_optional
}

# EXPLORE_ASSISTANT_REFINEMENT_EXAMPLES_TABLE_NAME is the name of the table that holds the refinement example training data
constant: EXPLORE_ASSISTANT_REFINEMENT_EXAMPLES_TABLE_NAME {
  value: "explore_assistant_ea_run_query.explore_assistant_refinement_examples"
  export: override_optional
}

# EXPLORE_ASSISTANT_SAMPLES_TABLE_NAME is the name of the table that holds the samples
constant: EXPLORE_ASSISTANT_SAMPLES_TABLE_NAME {
  value: "explore_assistant_ea_run_query.explore_assistant_samples"
  export: override_optional
}

application: explore_assistant {
  label: "Explore Assistant - logging"
  #file: "bundle.js"
  url: "https://localhost:8080/bundle.js"
  entitlements: {
    core_api_methods: ["lookml_model_explore","run_inline_query","run_query","create_query","update_user_attribute","create_user_attribute","all_user_attributes","me", "create_sql_query", "run_sql_query"]
    navigation: yes
    use_embeds: yes
    use_iframes: yes
    new_window: yes
    new_window_external_urls: ["https://developers.generativeai.google/*"]
    local_storage: yes
  }
}
