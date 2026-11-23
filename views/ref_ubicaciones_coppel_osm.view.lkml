view: ref_ubicaciones_coppel_osm {
  sql_table_name: `vertex-ia-503623.coppel.ref_ubicaciones_coppel_osm` ;;

  dimension: ciudad_osm {
    type: string
    sql: ${TABLE}.ciudad_osm ;;
  }
  dimension: codigo_postal {
    type: string
    sql: ${TABLE}.codigo_postal ;;
  }
  dimension: colonia {
    type: string
    sql: ${TABLE}.colonia ;;
  }
  dimension: direccion {
    type: string
    sql: ${TABLE}.direccion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_extraccion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_extraccion ;;
  }
  dimension: fuente {
    type: string
    sql: ${TABLE}.fuente ;;
  }
  dimension: horario {
    type: string
    sql: ${TABLE}.horario ;;
  }
  dimension: latitud {
    type: number
    sql: ${TABLE}.latitud ;;
  }
  dimension: longitud {
    type: number
    sql: ${TABLE}.longitud ;;
  }
  dimension: municipio {
    type: string
    sql: ${TABLE}.municipio ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: osm_id {
    type: string
    sql: ${TABLE}.osm_id ;;
  }
  dimension: sucursal_ref {
    type: string
    sql: ${TABLE}.sucursal_ref ;;
  }
  dimension: telefono {
    type: string
    sql: ${TABLE}.telefono ;;
  }
  dimension: tipo_ubicacion {
    type: string
    sql: ${TABLE}.tipo_ubicacion ;;
  }
  dimension: ubicacion_id {
    type: number
    sql: ${TABLE}.ubicacion_id ;;
  }
  measure: count {
    type: count
  }
}
