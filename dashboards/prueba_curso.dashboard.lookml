- dashboard: prueba_curso
  title: Coppel Curso | Validación
  layout: newspaper
  preferred_viewer: dashboards-next
  description: Dashboard mínimo de prueba para validar conexión y LookML de coppel_curso.
  elements:
  - title: Total canales de venta
    name: total_canales
    model: coppel_curso
    explore: dim_canal_venta
    type: single_value
    fields:
    - dim_canal_venta.count
    limit: 500
    row: 0
    col: 0
    width: 6
    height: 4
  - title: Canales de venta
    name: tabla_canales
    model: coppel_curso
    explore: dim_canal_venta
    type: looker_grid
    fields:
    - dim_canal_venta.canal_venta_id
    - dim_canal_venta.canal_venta
    - dim_canal_venta.es_digital
    - dim_canal_venta.count
    sorts:
    - dim_canal_venta.canal_venta_id
    limit: 500
    row: 0
    col: 6
    width: 18
    height: 4
