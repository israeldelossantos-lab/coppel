view: fact_solicitudes_credito {
  sql_table_name: `vertex-ia-503623.coppel.fact_solicitudes_credito` ;;

  dimension: canal_solicitud {
    type: string
    sql: ${TABLE}.canal_solicitud ;;
  }
  dimension: cliente_id {
    type: number
    sql: ${TABLE}.cliente_id ;;
  }
  dimension_group: fecha_solicitud {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_solicitud ;;
  }
  dimension: ingreso_declarado {
    type: number
    sql: ${TABLE}.ingreso_declarado ;;
  }
  dimension: limite_otorgado {
    type: number
    sql: ${TABLE}.limite_otorgado ;;
  }
  dimension: motivo_rechazo {
    type: string
    sql: ${TABLE}.motivo_rechazo ;;
  }
  dimension: resultado {
    type: string
    sql: ${TABLE}.resultado ;;
  }
  dimension: score_buro {
    type: number
    sql: ${TABLE}.score_buro ;;
  }
  dimension: solicitud_id {
    type: number
    sql: ${TABLE}.solicitud_id ;;
  }
  dimension: tiempo_resolucion_min {
    type: number
    sql: ${TABLE}.tiempo_resolucion_min ;;
  }
  dimension: tienda_id {
    type: number
    sql: ${TABLE}.tienda_id ;;
  }
  measure: count {
    type: count
  }
}
