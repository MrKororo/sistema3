Centrocosto.create!([
  {nombre: "Puerto Montt", codigo: "065", detalle_centro: "Centro destinado a Puerto Montt"}
])
Afp.create!([
  {afp: "Capital"},
  {afp: "Cuprum"},
  {afp: "Habitat"},
  {afp: "Modelo"},
  {afp: "PlanVital"},
  {afp: "Provida"}
])
Isapre.create!([
  {isapre: "Banmédica"},
  {isapre: "Capradena"},
  {isapre: "Colmena"},
  {isapre: "Consalud"},
  {isapre: "Cruz Blanca"},
  {isapre: "Ferrosalud"},
  {isapre: "Fonasa"},
  {isapre: "Más Vida"},
  {isapre: "Vida Tres"}
])
Banco.create!([
  {banco: "Banco Bice", tipo_cuenta: "Cuenta Corriente"},
  {banco: "Banco Bilbao Vizcaya Argentaria (BBVA)", tipo_cuenta: "Cuenta Corriente"},
  {banco: "Banco Consorcio", tipo_cuenta: "Cuenta Corriente"},
  {banco: "Banco de Chile", tipo_cuenta: "Cuenta Corriente"},
  {banco: "Banco de Crédito e Inversiones (BCI)", tipo_cuenta: "Cuenta Corriente"},
  {banco: "Banco Falabella", tipo_cuenta: "Cuenta Corriente"},
  {banco: "Banco Internacional", tipo_cuenta: "Cuenta Corriente"},
  {banco: "Banco Itaú Corpbanca", tipo_cuenta: "Cuenta Corriente"},
  {banco: "Banco Paris", tipo_cuenta: "Cuenta Corriente"},
  {banco: "Banco Penta", tipo_cuenta: "Cuenta Corriente"},
  {banco: "Banco Ripley", tipo_cuenta: "Cuenta Corriente"},
  {banco: "Banco Santander-Chile", tipo_cuenta: "Cuenta Corriente"},
  {banco: "Banco Security", tipo_cuenta: "Cuenta Corriente"},
  {banco: "Deutsche Bank (Chile)", tipo_cuenta: "Cuenta Corriente"},
  {banco: "HSBC Bank (Chile)", tipo_cuenta: "Cuenta Corriente"},
  {banco: "Rabobank Chile", tipo_cuenta: "Cuenta Corriente"},
  {banco: "Scotiabank Chile", tipo_cuenta: "Cuenta Corriente"}
])
Tipocontrato.create!([
  {tipo_contrato: "Contrato a plazo 120 días"},
  {tipo_contrato: "Contrato a plazo 90 días"},
  {tipo_contrato: "Contrato indefinido"},
  {tipo_contrato: "Contrato por Obras"},
  {tipo_contrato: "Contrato a plazo anual"}
])
Empresa.create!([
  {nombre_empresa: "Gonzalez S.A", rut_empresa: "12345678", giro: "Servicios Informaticos", domicilio: "Calle falsa 123", email: "falso@gmail.com", website: "", telefono: "424241121"}
])
Categorium.create!([
  {categoria: "Secretaria"},
  {categoria: "Funcionario"},
  {categoria: "Profesor"},
  {categoria: "Servicios Adicionales"},
  {categoria: "Mantencion"}
])
Subcategorium.create!([
  {subcategoria: "Secretaria clase S1", categorium_id: 1},
  {subcategoria: "Secretaria clase S2", categorium_id: 1},
  {subcategoria: "Secretaria clase S3", categorium_id: 1},
  {subcategoria: "Funcionario clase F1", categorium_id: 2},
  {subcategoria: "Funcionario clase F2", categorium_id: 2},
  {subcategoria: "Funcionario clase F3", categorium_id: 2},
  {subcategoria: "Profesor clase Pr1", categorium_id: 3},
  {subcategoria: "Profesor clase Pr2", categorium_id: 3},
  {subcategoria: "Profesor clase Pr3", categorium_id: 3},
  {subcategoria: "Adicionales clase A1", categorium_id: 4},
  {subcategoria: "Adicionales clase A2", categorium_id: 4},
  {subcategoria: "Mantencion equipos", categorium_id: 5}
])
Asignacion.create!([
  {asignacion: 25000, detalle_asignacion: "Movilización", subcategorium_id: 4},
  {asignacion: nil, detalle_asignacion: "Sin Asignacion", subcategorium_id: 4}
])
Bonificacion.create!([
  {bono: 35000, detalle_bono: "Trabajador del mes", subcategorium_id: 1},
  {bono: 35000, detalle_bono: "Trabajador del mes", subcategorium_id: 2},
  {bono: 35000, detalle_bono: "Trabajador del mes", subcategorium_id: 3},
  {bono: 35000, detalle_bono: "Trabajador del mes", subcategorium_id: 4},
  {bono: 35000, detalle_bono: "Trabajador del mes", subcategorium_id: 5},
  {bono: 35000, detalle_bono: "Trabajador del mes", subcategorium_id: 7},
  {bono: 35000, detalle_bono: "Trabajador del mes", subcategorium_id: 8},
  {bono: 35000, detalle_bono: "Trabajador del mes", subcategorium_id: 9},
  {bono: 35000, detalle_bono: "Trabajador del mes", subcategorium_id: 10},
  {bono: 35000, detalle_bono: "Trabajador del mes", subcategorium_id: 11},
  {bono: 35000, detalle_bono: "Trabajador del mes", subcategorium_id: 12},
  {bono: 35000, detalle_bono: "Trabajador del mes", subcategorium_id: 6},
  {bono: nil, detalle_bono: "s/n", subcategorium_id: 4},
  {bono: nil, detalle_bono: "s/n", subcategorium_id: 5}
])
Habere.create!([
  {sueldo_base: 400000, horas_pactadas: 130.0, valor_hora: 3076.92, subcategorium_id: 10},
  {sueldo_base: 350000, horas_pactadas: 100.0, valor_hora: 3500.0, subcategorium_id: 11},
  {sueldo_base: 450000, horas_pactadas: 180.0, valor_hora: 2500.0, subcategorium_id: 2},
  {sueldo_base: 500000, horas_pactadas: 140.0, valor_hora: 3571.43, subcategorium_id: 1},
  {sueldo_base: 500000, horas_pactadas: 126.0, valor_hora: 3968.25, subcategorium_id: 12},
  {sueldo_base: 12345677, horas_pactadas: 123.0, valor_hora: 100371.0, subcategorium_id: 5},
  {sueldo_base: 342400, horas_pactadas: 140.0, valor_hora: 2445.71, subcategorium_id: 3},
  {sueldo_base: 870000, horas_pactadas: 145.0, valor_hora: 6000.0, subcategorium_id: 4},
  {sueldo_base: 543222, horas_pactadas: 122.0, valor_hora: 4452.64, subcategorium_id: 6},
  {sueldo_base: 600000, horas_pactadas: 130.0, valor_hora: 4615.38, subcategorium_id: 7},
  {sueldo_base: 659000, horas_pactadas: 120.0, valor_hora: 5491.67, subcategorium_id: 8},
  {sueldo_base: 700000, horas_pactadas: 140.0, valor_hora: 5000.0, subcategorium_id: 9}
])
Personal.create!([
  {nombre_personal: "Silvino", apellidop_personal: "Grijalva", apellidom_personal: "Marroquín", rut_personal: "13453241-6", isapre_id: 1, banco_id: 5, subcategorium_id: 10, tipocontrato_id: 3, centrocosto_id: 1, afp_id: 5, personal_activo: true, fecha_ingreso: "2016-10-15", numero_cuenta: nil},
  {nombre_personal: "Edesio", apellidop_personal: "Matías", apellidom_personal: "Valdés", rut_personal: "14262196-7", isapre_id: 2, banco_id: 1, subcategorium_id: 1, tipocontrato_id: 3, centrocosto_id: 1, afp_id: 2, personal_activo: true, fecha_ingreso: "2016-10-15", numero_cuenta: nil},
  {nombre_personal: "Imperio", apellidop_personal: "Rolón", apellidom_personal: "Galarza", rut_personal: "23593222-9", isapre_id: 5, banco_id: 10, subcategorium_id: 12, tipocontrato_id: 4, centrocosto_id: 1, afp_id: 2, personal_activo: true, fecha_ingreso: "2016-10-15", numero_cuenta: nil},
  {nombre_personal: "Denna", apellidop_personal: "Carranza", apellidom_personal: "Carrión", rut_personal: "11120351-2", isapre_id: 5, banco_id: 11, subcategorium_id: 1, tipocontrato_id: 3, centrocosto_id: 1, afp_id: 5, personal_activo: true, fecha_ingreso: "2016-10-15", numero_cuenta: nil},
  {nombre_personal: "Nelly", apellidop_personal: "Pirogova", apellidom_personal: "Colón", rut_personal: "20973466-4", isapre_id: 4, banco_id: 7, subcategorium_id: 10, tipocontrato_id: 1, centrocosto_id: 1, afp_id: 4, personal_activo: true, fecha_ingreso: "2016-10-15", numero_cuenta: nil},
  {nombre_personal: "Scott", apellidop_personal: "Callahan", apellidom_personal: "Callahan", rut_personal: "12771707-9", isapre_id: 3, banco_id: 17, subcategorium_id: 12, tipocontrato_id: 2, centrocosto_id: 1, afp_id: 6, personal_activo: true, fecha_ingreso: "2016-10-15", numero_cuenta: nil},
  {nombre_personal: "Augusta", apellidop_personal: "Cunqueiro", apellidom_personal: "Reyes", rut_personal: "20346608-0", isapre_id: 6, banco_id: 8, subcategorium_id: 8, tipocontrato_id: 2, centrocosto_id: 1, afp_id: 4, personal_activo: true, fecha_ingreso: "2016-10-15", numero_cuenta: nil},
  {nombre_personal: "Elsa", apellidop_personal: "Debose", apellidom_personal: "Rapina", rut_personal: "24250536-0", isapre_id: 3, banco_id: 17, subcategorium_id: 10, tipocontrato_id: 3, centrocosto_id: 1, afp_id: 4, personal_activo: true, fecha_ingreso: "2016-10-15", numero_cuenta: nil},
  {nombre_personal: "Vanessa", apellidop_personal: "Rua", apellidom_personal: "Morales", rut_personal: "18831241-1", isapre_id: 3, banco_id: 2, subcategorium_id: 2, tipocontrato_id: 2, centrocosto_id: 1, afp_id: 5, personal_activo: true, fecha_ingreso: "2016-10-15", numero_cuenta: nil},
  {nombre_personal: "Lewis", apellidop_personal: "De la Fuente", apellidom_personal: "Williams", rut_personal: "7048229-0", isapre_id: 7, banco_id: 16, subcategorium_id: 12, tipocontrato_id: 4, centrocosto_id: 1, afp_id: 6, personal_activo: true, fecha_ingreso: "2016-10-15", numero_cuenta: nil},
  {nombre_personal: "Melinda", apellidop_personal: "Almonte", apellidom_personal: "Vanegas", rut_personal: "9253590-8", isapre_id: 6, banco_id: 7, subcategorium_id: 3, tipocontrato_id: 4, centrocosto_id: 1, afp_id: 2, personal_activo: true, fecha_ingreso: "2016-10-15", numero_cuenta: nil},
  {nombre_personal: "Ceferino", apellidop_personal: "Tafoya", apellidom_personal: "Guevara", rut_personal: "16080189-1", isapre_id: 6, banco_id: 11, subcategorium_id: 12, tipocontrato_id: 2, centrocosto_id: 1, afp_id: 5, personal_activo: true, fecha_ingreso: "2016-10-15", numero_cuenta: nil},
  {nombre_personal: "Larry", apellidop_personal: "Huerta", apellidom_personal: "Colunga", rut_personal: "11583605-6", isapre_id: 9, banco_id: 8, subcategorium_id: 9, tipocontrato_id: 1, centrocosto_id: 1, afp_id: 5, personal_activo: true, fecha_ingreso: "2016-10-15", numero_cuenta: nil},
  {nombre_personal: "Jovianne", apellidop_personal: "Velásquez", apellidom_personal: "Ulibarri", rut_personal: "24145055-4", isapre_id: 2, banco_id: 3, subcategorium_id: 4, tipocontrato_id: 3, centrocosto_id: 1, afp_id: 4, personal_activo: true, fecha_ingreso: "2016-10-15", numero_cuenta: nil},
  {nombre_personal: "Kaled", apellidop_personal: "Santillán", apellidom_personal: "Vázquez", rut_personal: "16648303-4", isapre_id: 8, banco_id: 17, subcategorium_id: 12, tipocontrato_id: 3, centrocosto_id: 1, afp_id: 6, personal_activo: true, fecha_ingreso: "2016-10-15", numero_cuenta: nil},
  {nombre_personal: "Uziel", apellidop_personal: "Mora", apellidom_personal: "Rodrígez", rut_personal: "12847354-8", isapre_id: 3, banco_id: 13, subcategorium_id: 12, tipocontrato_id: 4, centrocosto_id: 1, afp_id: 2, personal_activo: true, fecha_ingreso: "2016-10-15", numero_cuenta: nil},
  {nombre_personal: "Eulalia", apellidop_personal: "Aragón", apellidom_personal: "Rolón", rut_personal: "15473179-2", isapre_id: 3, banco_id: 15, subcategorium_id: 12, tipocontrato_id: 3, centrocosto_id: 1, afp_id: 6, personal_activo: true, fecha_ingreso: "2016-10-15", numero_cuenta: nil},
  {nombre_personal: "Amaro", apellidop_personal: "Rosas", apellidom_personal: "Ramírez", rut_personal: "11526897-k", isapre_id: 2, banco_id: 7, subcategorium_id: 12, tipocontrato_id: 1, centrocosto_id: 1, afp_id: 5, personal_activo: true, fecha_ingreso: "2016-10-15", numero_cuenta: nil},
  {nombre_personal: "Diego Nicolas", apellidop_personal: "Gonzalez", apellidom_personal: "Cuevas", rut_personal: "17694123-5", isapre_id: 3, banco_id: 4, subcategorium_id: 12, tipocontrato_id: 1, centrocosto_id: 1, afp_id: 5, personal_activo: true, fecha_ingreso: "2016-10-17", numero_cuenta: 69440002},
  {nombre_personal: "Diego", apellidop_personal: "Parra", apellidom_personal: "Parra", rut_personal: "16239069-4", isapre_id: 7, banco_id: 7, subcategorium_id: 11, tipocontrato_id: 2, centrocosto_id: 1, afp_id: 2, personal_activo: true, fecha_ingreso: "2016-10-17", numero_cuenta: 23456781},
  {nombre_personal: "Anselmo", apellidop_personal: "Fox", apellidom_personal: "Fox", rut_personal: "20829259-5", isapre_id: 2, banco_id: 14, subcategorium_id: 5, tipocontrato_id: 4, centrocosto_id: 1, afp_id: 5, personal_activo: true, fecha_ingreso: "2016-10-31", numero_cuenta: nil}
])

