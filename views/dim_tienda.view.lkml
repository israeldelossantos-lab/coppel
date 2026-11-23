view: dim_tienda {
  sql_table_name: `vertex-ia-503623.coppel.dim_tienda` ;;

  dimension: cedis_id {
    type: number
    sql: ${TABLE}.cedis_id ;;
  }
  dimension: ciudad {
    type: string
    sql: ${TABLE}.ciudad ;;
  }
  dimension: codigo_postal {
    type: string
    sql: ${TABLE}.codigo_postal ;;
  }
  dimension: codigo_tienda {
    type: string
    sql: ${TABLE}.codigo_tienda ;;
  }
  dimension: colonia {
    type: string
    sql: ${TABLE}.colonia ;;
  }
  dimension: direccion {
    type: string
    sql: ${TABLE}.direccion ;;
  }
  dimension: es_tienda_fisica {
    type: yesno
    sql: ${TABLE}.es_tienda_fisica ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_apertura {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_apertura ;;
  }
  dimension: formato {
    type: string
    sql: ${TABLE}.formato ;;
  }
  dimension: gerente_tienda {
    type: string
    sql: ${TABLE}.gerente_tienda ;;
  }
  dimension: latitud {
    type: number
    sql: ${TABLE}.latitud ;;
  }
  dimension: longitud {
    type: number
    sql: ${TABLE}.longitud ;;
  }
  dimension: nombre_cedis {
    type: string
    sql: ${TABLE}.nombre_cedis ;;
  }
  dimension: nombre_tienda {
    type: string
    sql: ${TABLE}.nombre_tienda ;;
  }
  dimension: osm_id {
    type: string
    sql: ${TABLE}.osm_id ;;
  }
  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }
  dimension: superficie_m2 {
    type: number
    sql: ${TABLE}.superficie_m2 ;;
  }
  dimension: tienda_id {
    type: number
    sql: ${TABLE}.tienda_id ;;
  }
  measure: count {
    type: count
  }
}
