view: fact_encuestas_nps {
  sql_table_name: `vertex-ia-503623.coppel.fact_encuestas_nps` ;;

  dimension: calificacion_nps {
    type: number
    sql: ${TABLE}.calificacion_nps ;;
  }
  dimension: canal_venta_id {
    type: number
    sql: ${TABLE}.canal_venta_id ;;
  }
  dimension: categoria_nps {
    type: string
    sql: ${TABLE}.categoria_nps ;;
  }
  dimension: cliente_id {
    type: number
    sql: ${TABLE}.cliente_id ;;
  }
  dimension: csat_1a5 {
    type: number
    sql: ${TABLE}.csat_1a5 ;;
  }
  dimension: encuesta_id {
    type: number
    sql: ${TABLE}.encuesta_id ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha ;;
  }
  dimension: tema_principal {
    type: string
    sql: ${TABLE}.tema_principal ;;
  }
  dimension: ticket_id {
    type: number
    sql: ${TABLE}.ticket_id ;;
  }
  dimension: tienda_id {
    type: number
    sql: ${TABLE}.tienda_id ;;
  }
  measure: count {
    type: count
  }
}
