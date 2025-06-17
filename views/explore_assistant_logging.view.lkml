view: explore_assistant_logging {
  derived_table: {
    datagroup_trigger: logging
    create_process: {
      sql_step:
      INSERT `@{EXPLORE_ASSISTANT_LOGGING_TABLE_NAME}` (
      user
      , model
      , explore
      , question
      , explore_url
      , timestamp
      )
      VALUES(
      {% parameter user %}
      ,{% parameter model %}
      ,{% parameter explore %}
      ,{% parameter question %}
      ,{% parameter explore_url %}
      ,{% parameter timestamp %}
      );;
      sql_step: SELECT 1 as col  ;;

    }
  }
  dimension: col {
    type: string
    sql: ${TABLE}.col ;;
  }
  parameter: user {
    type: string
  }
  parameter: model {
    type: string
  }
  parameter: explore {
    type: string
  }
  parameter: question {
    type: string
  }
  parameter: explore_url {
    type: string
  }
  parameter: timestamp {
    type: string
  }
}
