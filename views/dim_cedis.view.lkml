view: dim_cedis {
  sql_table_name: `vertex-ia-503623.coppel.dim_cedis` ;;

  dimension: capacidad_posiciones_rack {
    type: number
    sql: ${TABLE}.capacidad_posiciones_rack ;;
  }
  dimension: cedis_id {
    type: number
    sql: ${TABLE}.cedis_id ;;
  }
  dimension: ciudad {
    type: string
    sql: ${TABLE}.ciudad ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: fuente {
    type: string
    sql: ${TABLE}.fuente ;;
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
  measure: count {
    type: count
  }
}
