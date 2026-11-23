view: dim_cliente {
  sql_table_name: `vertex-ia-503623.coppel.dim_cliente` ;;

  dimension: acepta_marketing {
    type: yesno
    sql: ${TABLE}.acepta_marketing ;;
  }
  dimension: canal_adquisicion {
    type: string
    sql: ${TABLE}.canal_adquisicion ;;
  }
  dimension: ciudad {
    type: string
    sql: ${TABLE}.ciudad ;;
  }
  dimension: cliente_id {
    type: number
    sql: ${TABLE}.cliente_id ;;
  }
  dimension: edad {
    type: number
    sql: ${TABLE}.edad ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_alta {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_alta ;;
  }
  dimension_group: fecha_alta_credito {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_alta_credito ;;
  }
  dimension_group: fecha_castigo_credito {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_castigo_credito ;;
  }
  dimension: genero {
    type: string
    sql: ${TABLE}.genero ;;
  }
  dimension: ingreso_mensual_estimado {
    type: number
    sql: ${TABLE}.ingreso_mensual_estimado ;;
  }
  dimension: limite_credito {
    type: number
    sql: ${TABLE}.limite_credito ;;
  }
  dimension: ocupacion {
    type: string
    sql: ${TABLE}.ocupacion ;;
  }
  dimension: rango_edad {
    type: string
    sql: ${TABLE}.rango_edad ;;
  }
  dimension: segmento_riesgo {
    type: string
    sql: ${TABLE}.segmento_riesgo ;;
  }
  dimension: tienda_id_preferida {
    type: number
    value_format_name: id
    sql: ${TABLE}.tienda_id_preferida ;;
  }
  dimension: tiene_credito_coppel {
    type: yesno
    sql: ${TABLE}.tiene_credito_coppel ;;
  }
  measure: count {
    type: count
  }
}
