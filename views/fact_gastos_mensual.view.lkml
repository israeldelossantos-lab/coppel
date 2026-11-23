view: fact_gastos_mensual {
  sql_table_name: `vertex-ia-503623.coppel.fact_gastos_mensual` ;;

  dimension: centro_costo_id {
    type: number
    sql: ${TABLE}.centro_costo_id ;;
  }
  dimension: cuenta_id {
    type: number
    sql: ${TABLE}.cuenta_id ;;
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
  dimension: variacion {
    type: number
    sql: ${TABLE}.variacion ;;
  }
  measure: count {
    type: count
  }
}
