view: fact_marketing_diario {
  sql_table_name: `vertex-ia-503623.coppel.fact_marketing_diario` ;;

  dimension: alcance {
    type: number
    sql: ${TABLE}.alcance ;;
  }
  dimension: campana_id {
    type: number
    sql: ${TABLE}.campana_id ;;
  }
  dimension: canal_marketing_id {
    type: number
    sql: ${TABLE}.canal_marketing_id ;;
  }
  dimension: clics {
    type: number
    sql: ${TABLE}.clics ;;
  }
  dimension: clientes_nuevos {
    type: number
    sql: ${TABLE}.clientes_nuevos ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha ;;
  }
  dimension: impresiones {
    type: number
    sql: ${TABLE}.impresiones ;;
  }
  dimension: ingresos_atribuidos {
    type: number
    sql: ${TABLE}.ingresos_atribuidos ;;
  }
  dimension: inversion {
    type: number
    sql: ${TABLE}.inversion ;;
  }
  dimension: leads_credito {
    type: number
    sql: ${TABLE}.leads_credito ;;
  }
  dimension: ordenes_atribuidas {
    type: number
    sql: ${TABLE}.ordenes_atribuidas ;;
  }
  dimension: sesiones {
    type: number
    sql: ${TABLE}.sesiones ;;
  }
  measure: count {
    type: count
  }
}
