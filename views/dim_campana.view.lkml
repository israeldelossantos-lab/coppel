view: dim_campana {
  sql_table_name: `vertex-ia-503623.coppel.dim_campana` ;;

  dimension: campana_id {
    type: number
    sql: ${TABLE}.campana_id ;;
  }
  dimension: departamentos_foco {
    type: string
    sql: ${TABLE}.departamentos_foco ;;
  }
  dimension: evento_comercial {
    type: string
    sql: ${TABLE}.evento_comercial ;;
  }
  dimension_group: fecha_fin {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_fin ;;
  }
  dimension_group: fecha_inicio {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_inicio ;;
  }
  dimension: nombre_campana {
    type: string
    sql: ${TABLE}.nombre_campana ;;
  }
  dimension: objetivo {
    type: string
    sql: ${TABLE}.objetivo ;;
  }
  dimension: presupuesto {
    type: number
    sql: ${TABLE}.presupuesto ;;
  }
  dimension: tipo_campana {
    type: string
    sql: ${TABLE}.tipo_campana ;;
  }
  measure: count {
    type: count
  }
}
