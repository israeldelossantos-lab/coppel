view: dim_fecha {
  sql_table_name: `vertex-ia-503623.coppel.dim_fecha` ;;

  dimension: anio {
    type: number
    sql: ${TABLE}.anio ;;
  }
  dimension: anio_mes {
    type: string
    sql: ${TABLE}.anio_mes ;;
  }
  dimension: dia_del_anio {
    type: number
    sql: ${TABLE}.dia_del_anio ;;
  }
  dimension: dia_mes {
    type: number
    sql: ${TABLE}.dia_mes ;;
  }
  dimension: dia_semana_num {
    type: number
    sql: ${TABLE}.dia_semana_num ;;
  }
  dimension: es_evento {
    type: yesno
    sql: ${TABLE}.es_evento ;;
  }
  dimension: es_fin_de_semana {
    type: yesno
    sql: ${TABLE}.es_fin_de_semana ;;
  }
  dimension: es_quincena {
    type: yesno
    sql: ${TABLE}.es_quincena ;;
  }
  dimension: evento_comercial {
    type: string
    sql: ${TABLE}.evento_comercial ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha ;;
  }
  dimension: mes {
    type: number
    sql: ${TABLE}.mes ;;
  }
  dimension: nombre_dia {
    type: string
    sql: ${TABLE}.nombre_dia ;;
  }
  dimension: nombre_mes {
    type: string
    sql: ${TABLE}.nombre_mes ;;
  }
  dimension: semana_iso {
    type: number
    sql: ${TABLE}.semana_iso ;;
  }
  dimension: trimestre {
    type: number
    sql: ${TABLE}.trimestre ;;
  }
  measure: count {
    type: count
  }
}
