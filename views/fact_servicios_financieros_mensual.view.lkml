view: fact_servicios_financieros_mensual {
  sql_table_name: `vertex-ia-503623.coppel.fact_servicios_financieros_mensual` ;;

  dimension: ingreso_comision {
    type: number
    sql: ${TABLE}.ingreso_comision ;;
  }
  dimension_group: mes {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.mes ;;
  }
  dimension: monto_operado {
    type: number
    sql: ${TABLE}.monto_operado ;;
  }
  dimension: operaciones {
    type: number
    sql: ${TABLE}.operaciones ;;
  }
  dimension: servicio {
    type: string
    sql: ${TABLE}.servicio ;;
  }
  dimension: tienda_id {
    type: number
    sql: ${TABLE}.tienda_id ;;
  }
  measure: count {
    type: count
  }
}
