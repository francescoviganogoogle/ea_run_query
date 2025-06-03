view: explore_assistant {
  derived_table: {
    sql: SELECT ml_generate_text_llm_result AS generated_content
      FROM
      ML.GENERATE_TEXT(
          MODEL `@{BQML_REMOTE_CONNECTION_MODEL_ID}`,
          (
            SELECT {% parameter prompt %}  AS prompt

      ),
      STRUCT(
      0.1 AS temperature,
      1024 AS max_output_tokens,
      0.98 AS top_p,
      true AS flatten_json_output,
      1 AS top_k)
      ) ;;
  }

  parameter: prompt {
    type: string
  }

  dimension: generated_content {
    type: string
    sql: ${TABLE}.generated_content ;;
  }
}
