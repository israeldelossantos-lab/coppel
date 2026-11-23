view: dim_cuenta_contable {
  sql_table_name: `vertex-ia-503623.coppel.dim_cuenta_contable` ;;

  dimension: comportamiento {
    type: string
    sql: ${TABLE}.comportamiento ;;
  }
  dimension: cuenta_contable {
    type: string
    sql: ${TABLE}.cuenta_contable ;;
  }
  dimension: cuenta_id {
    type: number
    sql: ${TABLE}.cuenta_id ;;
  }
  dimension: grupo_cuenta {
    type: string
    sql: ${TABLE}.grupo_cuenta ;;
  }
  measure: count {
    type: count
  }
}
