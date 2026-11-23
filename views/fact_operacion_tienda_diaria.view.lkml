view: fact_operacion_tienda_diaria {
  sql_table_name: `vertex-ia-503623.coppel.fact_operacion_tienda_diaria` ;;

  dimension: empleados_programados {
    type: number
    sql: ${TABLE}.empleados_programados ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha ;;
  }
  dimension: horas_laboradas {
    type: number
    sql: ${TABLE}.horas_laboradas ;;
  }
  dimension: incidencias_operativas {
    type: number
    sql: ${TABLE}.incidencias_operativas ;;
  }
  dimension: solicitudes_credito {
    type: number
    sql: ${TABLE}.solicitudes_credito ;;
  }
  dimension: tasa_conversion {
    type: number
    sql: ${TABLE}.tasa_conversion ;;
  }
  dimension: tickets {
    type: number
    sql: ${TABLE}.tickets ;;
  }
  dimension: tiempo_espera_caja_min {
    type: number
    sql: ${TABLE}.tiempo_espera_caja_min ;;
  }
  dimension: tienda_id {
    type: number
    sql: ${TABLE}.tienda_id ;;
  }
  dimension: unidades_vendidas {
    type: number
    sql: ${TABLE}.unidades_vendidas ;;
  }
  dimension: venta_neta {
    type: number
    sql: ${TABLE}.venta_neta ;;
  }
  dimension: venta_neta_credito {
    type: number
    sql: ${TABLE}.venta_neta_credito ;;
  }
  dimension: visitantes {
    type: number
    sql: ${TABLE}.visitantes ;;
  }
  measure: count {
    type: count
  }
}
