view: fact_estado_resultados_mensual {
  sql_table_name: `vertex-ia-503623.coppel.fact_estado_resultados_mensual` ;;

  dimension: concepto {
    type: string
    sql: ${TABLE}.concepto ;;
  }
  dimension: es_subtotal {
    type: yesno
    sql: ${TABLE}.es_subtotal ;;
  }
  dimension_group: mes {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.mes ;;
  }
  dimension: monto_presupuesto {
    type: number
    sql: ${TABLE}.monto_presupuesto ;;
  }
  dimension: monto_real {
    type: number
    sql: ${TABLE}.monto_real ;;
  }
  dimension: orden {
    type: number
    sql: ${TABLE}.orden ;;
  }
  dimension: seccion {
    type: string
    sql: ${TABLE}.seccion ;;
  }
  dimension: tienda_id {
    type: number
    sql: ${TABLE}.tienda_id ;;
  }
  measure: count {
    type: count
  }
}
