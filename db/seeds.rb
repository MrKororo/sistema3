Afp.create!([
  {afp: "Capital", descuento_afp: 11.44},
  {afp: "Cuprum", descuento_afp: 11.48},
  {afp: "Habitat", descuento_afp: 11.27},
  {afp: "Modelo", descuento_afp: 10.77},
  {afp: "Planvital", descuento_afp: 10.41},
  {afp: "Provida", descuento_afp: 11.54}
])
Asignacion.create!([
  {asignacion: 0, detalle_asignacion: "Sin Asignacion", subcategorium_id: 1},
  {asignacion: 0, detalle_asignacion: "Sin Asignacion", subcategorium_id: 2},
  {asignacion: 50000, detalle_asignacion: "Almuerzos", subcategorium_id: 2},
  {asignacion: 0, detalle_asignacion: "Sin Asignacion", subcategorium_id: 3},
  {asignacion: 0, detalle_asignacion: "Sin Asignacion", subcategorium_id: 4},
  {asignacion: 0, detalle_asignacion: "Sin Asignacion", subcategorium_id: 5},
  {asignacion: 0, detalle_asignacion: "Sin Asignacion", subcategorium_id: 6}
])
AsignacionFamiliar.create!([
  {tramo: "A", monto: 10577, requisitoMinimo: 0, requisitoMaximo: 270196},
  {tramo: "B", monto: 6491, requisitoMinimo: 270196, requisitoMaximo: 394651},
  {tramo: "C", monto: 2051, requisitoMinimo: 394651, requisitoMaximo: 615521},
  {tramo: "D", monto: 0, requisitoMinimo: 615521, requisitoMaximo: 9999999}
])
Banco.create!([
  {banco: "Banco Bice", tipo_cuenta: "Cuenta Corriente"},
  {banco: "Banco Bilbao Vizcaya Argentaria (Bbva)", tipo_cuenta: "Cuenta Corriente"},
  {banco: "Banco Consorcio", tipo_cuenta: "Cuenta Corriente"},
  {banco: "Banco De Chile", tipo_cuenta: "Cuenta Corriente"},
  {banco: "Banco De Crédito E Inversiones (Bci)", tipo_cuenta: "Cuenta Corriente"},
  {banco: "Banco Falabella", tipo_cuenta: "Cuenta Corriente"},
  {banco: "Banco Internacional", tipo_cuenta: "Cuenta Corriente"},
  {banco: "Banco Itaú Corpbanca", tipo_cuenta: "Cuenta Corriente"},
  {banco: "Banco Paris", tipo_cuenta: "Cuenta Corriente"},
  {banco: "Banco Penta", tipo_cuenta: "Cuenta Corriente"},
  {banco: "Banco Ripley", tipo_cuenta: "Cuenta Corriente"},
  {banco: "Banco Santander Chile", tipo_cuenta: "Cuenta Corriente"},
  {banco: "Banco Security", tipo_cuenta: "Cuenta Corriente"},
  {banco: "Deutsche Bank (Chile)", tipo_cuenta: "Cuenta Corriente"},
  {banco: "Hsbc Bank (Chile)", tipo_cuenta: "Cuenta Corriente"},
  {banco: "Rabobank Chile", tipo_cuenta: "Cuenta Corriente"},
  {banco: "Scotiabank Chile", tipo_cuenta: "Cuenta Corriente"},
  {banco: "Banco Estado", tipo_cuenta: "Cuenta Debito"}
])
Bonificacion.create!([
  {bono: 0, detalle_bono: "Sin Bonificacion", subcategorium_id: 1},
  {bono: 0, detalle_bono: "Sin Bonificacion", subcategorium_id: 2},
  {bono: 25000, detalle_bono: "Bono locomocion mensual", subcategorium_id: 1},
  {bono: 25000, detalle_bono: "Bono locomocion mensual", subcategorium_id: 2},
  {bono: 50000, detalle_bono: "Bono productividad", subcategorium_id: 1},
  {bono: 0, detalle_bono: "Sin Bonificacion", subcategorium_id: 3},
  {bono: 0, detalle_bono: "Sin Bonificacion", subcategorium_id: 4},
  {bono: 0, detalle_bono: "Sin Bonificacion", subcategorium_id: 5},
  {bono: 0, detalle_bono: "Sin Bonificacion", subcategorium_id: 6}
])
Categorium.create!([
  {categoria: "Administrativo"},
  {categoria: "Servicios Adicionales"},
  {categoria: "Mantencion"},
  {categoria: "Ingeniero"}
])
Centrocosto.create!([
  {nombre: "Centro Puerto Montt", codigo: "065", detalle_centro: "Centro destinado a Puerto Montt"}
])
Certificate.create!([
  {personal_id: 1, rut_personal: "17694123-5", motivo: "Trámites de asignación familiar"},
  {personal_id: 2, rut_personal: "1000007-6", motivo: "Trámites de asignación familiar"},
  {personal_id: 3, rut_personal: "18408461-9", motivo: "Trámites Judiciales "},
  {personal_id: 4, rut_personal: "13453241-6", motivo: nil},
  {personal_id: 5, rut_personal: "14262196-7", motivo: nil},
  {personal_id: 6, rut_personal: "23593222-9", motivo: nil},
  {personal_id: 7, rut_personal: "11120351-2", motivo: nil},
  {personal_id: 8, rut_personal: "20973466-4", motivo: nil},
  {personal_id: 9, rut_personal: "12771707-9", motivo: nil},
  {personal_id: 10, rut_personal: "20346608-0", motivo: nil},
  {personal_id: 11, rut_personal: "24250536-0", motivo: nil},
  {personal_id: 12, rut_personal: "18831241-1", motivo: nil},
  {personal_id: 13, rut_personal: "7048229-0", motivo: nil},
  {personal_id: 14, rut_personal: "9253590-8", motivo: nil},
  {personal_id: 15, rut_personal: "16080189-1", motivo: nil},
  {personal_id: 16, rut_personal: "11583605-6", motivo: nil},
  {personal_id: 17, rut_personal: "24145055-4", motivo: nil},
  {personal_id: 18, rut_personal: "16648303-4", motivo: nil},
  {personal_id: 19, rut_personal: "12847354-8", motivo: nil},
  {personal_id: 20, rut_personal: "15473179-2", motivo: nil},
  {personal_id: 21, rut_personal: "11526897-k", motivo: nil}
])
DescuentoAdicional.create!([
  {descuento_adicional: 0, detalle: ""}
])
Empresa.create!([
  {nombre_empresa: "GonzalezSA", rut_empresa: "1234567890", giro: "Informatica", domicilio: "Calle falsa 123", email: "falso@gmail.com", website: "www.falso.com", telefono: "922901010", image_file_name: "logo.jpg", image_content_type: "image/jpeg", image_file_size: 9145, image_updated_at: "2016-12-14 14:53:41"}
])
Habere.create!([
  {sueldo_base: 1500000, horas_pactadas: 180.0, valor_hora: 8333.0, subcategorium_id: 1},
  {sueldo_base: 850000, horas_pactadas: 180.0, valor_hora: 4722.0, subcategorium_id: 2},
  {sueldo_base: 550000, horas_pactadas: 180.0, valor_hora: 3056.0, subcategorium_id: 4},
  {sueldo_base: 1060000, horas_pactadas: 180.0, valor_hora: 5889.0, subcategorium_id: 5},
  {sueldo_base: 500000, horas_pactadas: 180.0, valor_hora: 2778.0, subcategorium_id: 3},
  {sueldo_base: 400000, horas_pactadas: 100.0, valor_hora: 4000.0, subcategorium_id: 6}
])
ImpuestoUnico.create!([
  {imponibleMinimo: "0.0", imponibleMaximo: "623470.5", factor: "0.0", rebaja: "0.0", impuestoEfectivoMax: "0.0"},
  {imponibleMinimo: "623470.51", imponibleMaximo: "1385490.0", factor: "0.04", rebaja: "24938.82", impuestoEfectivoMax: "2.2"},
  {imponibleMinimo: "1385490.01", imponibleMaximo: "2309150.0", factor: "0.08", rebaja: "80358.42", impuestoEfectivoMax: "4.52"},
  {imponibleMinimo: "2309150.01", imponibleMaximo: "3232810.0", factor: "0.135", rebaja: "207361.67", impuestoEfectivoMax: "7.09"},
  {imponibleMinimo: "3232810.01", imponibleMaximo: "4156470.0", factor: "0.23", rebaja: "514478.62", impuestoEfectivoMax: "10.62"},
  {imponibleMinimo: "4156470.01", imponibleMaximo: "5541960.0", factor: "0.304", rebaja: "822057.4", impuestoEfectivoMax: "15.57"},
  {imponibleMinimo: "5541960.01", imponibleMaximo: "6927450.0", factor: "0.355", rebaja: "1104697.36", impuestoEfectivoMax: "19.55"},
  {imponibleMinimo: "6927450.01", imponibleMaximo: "100000000.0", factor: "0.4", rebaja: "1416432.61", impuestoEfectivoMax: "19.55"}
])
IndicadorEconomico.create!([
  {indicador: "UF", valor: "26347.98"}
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
Liquidacion.create!([
  {asignacion_id: 1, habere_id: 1, bonificacion_id: 5, descuento_adicional_id: 1, personal_id: 1, fecha_pago: "2016-12-14", porcentaje_afp: 10.41, descuento_afp: 161349, descuento_isapre: 85000, impuesto: 43637, cotizacion_voluntaria: 0, horas_trabajadas: 180.0, remuneracion: 1499940, cantidad_horas_extra: 0, horas_extra: 0, vacaciones: 0.0, total_imponible: 1549940, sindicato: 5000, total_haberes: 1549940, desc_legales: 246349, desc_varios: 48637, liquido_pagar: 1254954, asignacion_familiar: 0},
  {asignacion_id: 1, habere_id: 1, bonificacion_id: 3, descuento_adicional_id: nil, personal_id: 1, fecha_pago: "2016-11-14", porcentaje_afp: 10.41, descuento_afp: 170457, descuento_isapre: 86000, impuesto: 0, cotizacion_voluntaria: 0, horas_trabajadas: 180.0, remuneracion: 1499940, cantidad_horas_extra: 9, horas_extra: 112496, vacaciones: 0.0, total_imponible: 1637436, sindicato: 10000, total_haberes: 1637436, desc_legales: 256457, desc_varios: 10000, liquido_pagar: 1370979, asignacion_familiar: nil},
  {asignacion_id: 3, habere_id: 2, bonificacion_id: 4, descuento_adicional_id: nil, personal_id: 3, fecha_pago: "2016-12-14", porcentaje_afp: 11.54, descuento_afp: 95521, descuento_isapre: 90000, impuesto: 0, cotizacion_voluntaria: 30000, horas_trabajadas: 170.0, remuneracion: 802740, cantidad_horas_extra: 0, horas_extra: 0, vacaciones: 0.0, total_imponible: 827740, sindicato: 0, total_haberes: 877740, desc_legales: 185521, desc_varios: 30000, liquido_pagar: 662219, asignacion_familiar: nil},
  {asignacion_id: 3, habere_id: 2, bonificacion_id: 4, descuento_adicional_id: nil, personal_id: 3, fecha_pago: "2016-11-01", porcentaje_afp: 11.44, descuento_afp: 107388, descuento_isapre: 90000, impuesto: 0, cotizacion_voluntaria: 10000, horas_trabajadas: 180.0, remuneracion: 849960, cantidad_horas_extra: 9, horas_extra: 63747, vacaciones: 0.0, total_imponible: 938707, sindicato: 5000, total_haberes: 988707, desc_legales: 197388, desc_varios: 15000, liquido_pagar: 776319, asignacion_familiar: nil},
  {asignacion_id: 1, habere_id: 1, bonificacion_id: 3, descuento_adicional_id: nil, personal_id: 1, fecha_pago: "2016-12-31", porcentaje_afp: 11.54, descuento_afp: 188960, descuento_isapre: 90000, impuesto: 0, cotizacion_voluntaria: 0, horas_trabajadas: 180.0, remuneracion: 1499940, cantidad_horas_extra: 9, horas_extra: 112496, vacaciones: 0.0, total_imponible: 1637436, sindicato: 10000, total_haberes: 1637436, desc_legales: 278960, desc_varios: 10000, liquido_pagar: 1348476, asignacion_familiar: nil},
  {asignacion_id: 1, habere_id: 1, bonificacion_id: 3, descuento_adicional_id: 1, personal_id: 2, fecha_pago: "2016-12-15", porcentaje_afp: 11.27, descuento_afp: 162469, descuento_isapre: 100000, impuesto: 34971, cotizacion_voluntaria: 100000, horas_trabajadas: 170.0, remuneracion: 1416610, cantidad_horas_extra: 0, horas_extra: 0, vacaciones: 0.0, total_imponible: 1441610, sindicato: 10000, total_haberes: 1441610, desc_legales: 262469, desc_varios: 144971, liquido_pagar: 1034170, asignacion_familiar: 0},
  {asignacion_id: 2, habere_id: 2, bonificacion_id: 2, descuento_adicional_id: 1, personal_id: 3, fecha_pago: "2017-01-31", porcentaje_afp: 11.44, descuento_afp: 37814, descuento_isapre: 50000, impuesto: 0, cotizacion_voluntaria: 50000, horas_trabajadas: 70.0, remuneracion: 330540, cantidad_horas_extra: 0, horas_extra: 0, vacaciones: 0.0, total_imponible: 330540, sindicato: 10000, total_haberes: 330540, desc_legales: 87814, desc_varios: 60000, liquido_pagar: 189217, asignacion_familiar: 6491}
])
Personal.create!([
  {nombre_personal: "Diego Nicolas", apellidop_personal: "Gonzalez", apellidom_personal: "Cuevas", rut_personal: "17694123-5", isapre_id: 7, banco_id: 12, subcategorium_id: 1, tipocontrato_id: 3, centrocosto_id: 1, afp_id: 5, personal_activo: true, fecha_ingreso: "2016-12-01", sindicato_id: 1, numero_cuenta: 69440002, cargas_familiar: 3, cotizacion_voluntaria: 100000, descuento_isapre: 100000},
  {nombre_personal: "Leandra", apellidop_personal: "Moreno", apellidom_personal: "Soto", rut_personal: "1000007-6", isapre_id: 3, banco_id: 1, subcategorium_id: 1, tipocontrato_id: 3, centrocosto_id: 1, afp_id: 1, personal_activo: true, fecha_ingreso: "2016-12-12", sindicato_id: 3, numero_cuenta: nil, cargas_familiar: 2, cotizacion_voluntaria: 100000, descuento_isapre: 100000},
  {nombre_personal: "Tamara Soledad", apellidop_personal: "Cardenas", apellidom_personal: "Nitor", rut_personal: "18408461-9", isapre_id: 9, banco_id: 2, subcategorium_id: 2, tipocontrato_id: 3, centrocosto_id: 1, afp_id: 6, personal_activo: true, fecha_ingreso: "2016-11-13", sindicato_id: 3, numero_cuenta: nil, cargas_familiar: 1, cotizacion_voluntaria: 50000, descuento_isapre: 50000},
  {nombre_personal: "Silvino", apellidop_personal: "Grijalva", apellidom_personal: "Marroquín", rut_personal: "13453241-6", isapre_id: 8, banco_id: 16, subcategorium_id: 1, tipocontrato_id: 5, centrocosto_id: 1, afp_id: 6, personal_activo: true, fecha_ingreso: "2016-11-15", sindicato_id: 3, numero_cuenta: 672319845, cargas_familiar: 2, cotizacion_voluntaria: 0, descuento_isapre: 65000},
  {nombre_personal: "Edesio", apellidop_personal: "Matías", apellidom_personal: "Valdés", rut_personal: "14262196-7", isapre_id: 7, banco_id: 15, subcategorium_id: 3, tipocontrato_id: 3, centrocosto_id: 1, afp_id: 6, personal_activo: true, fecha_ingreso: "2016-11-15", sindicato_id: 1, numero_cuenta: 1234544, cargas_familiar: 0, cotizacion_voluntaria: 50000, descuento_isapre: 55000},
  {nombre_personal: "Imperio", apellidop_personal: "Rolón", apellidom_personal: "Galarza", rut_personal: "23593222-9", isapre_id: 3, banco_id: 6, subcategorium_id: 5, tipocontrato_id: 3, centrocosto_id: 1, afp_id: 3, personal_activo: true, fecha_ingreso: "2016-11-15", sindicato_id: 2, numero_cuenta: 988809788, cargas_familiar: 0, cotizacion_voluntaria: 0, descuento_isapre: 70000},
  {nombre_personal: "Denna", apellidop_personal: "Carranza", apellidom_personal: "Carrión", rut_personal: "11120351-2", isapre_id: 8, banco_id: 11, subcategorium_id: 4, tipocontrato_id: 3, centrocosto_id: 1, afp_id: 1, personal_activo: true, fecha_ingreso: "2016-11-15", sindicato_id: 2, numero_cuenta: 2222433, cargas_familiar: 2, cotizacion_voluntaria: 40000, descuento_isapre: 60000},
  {nombre_personal: "Nelly", apellidop_personal: "Pirogova", apellidom_personal: "Colón", rut_personal: "20973466-4", isapre_id: 4, banco_id: 4, subcategorium_id: 3, tipocontrato_id: 5, centrocosto_id: 1, afp_id: 3, personal_activo: true, fecha_ingreso: "2016-11-15", sindicato_id: 3, numero_cuenta: 97863412, cargas_familiar: 2, cotizacion_voluntaria: 0, descuento_isapre: 50000},
  {nombre_personal: "Scott", apellidop_personal: "Callahan", apellidom_personal: "Callahan", rut_personal: "12771707-9", isapre_id: 7, banco_id: 7, subcategorium_id: 4, tipocontrato_id: 3, centrocosto_id: 1, afp_id: 2, personal_activo: true, fecha_ingreso: "2016-11-15", sindicato_id: 1, numero_cuenta: 12312344, cargas_familiar: 3, cotizacion_voluntaria: 20000, descuento_isapre: 45000},
  {nombre_personal: "Augusta", apellidop_personal: "Cunqueiro", apellidom_personal: "Reyes", rut_personal: "20346608-0", isapre_id: 4, banco_id: 13, subcategorium_id: 1, tipocontrato_id: 4, centrocosto_id: 1, afp_id: 3, personal_activo: true, fecha_ingreso: "2016-11-15", sindicato_id: 1, numero_cuenta: 6758884, cargas_familiar: 2, cotizacion_voluntaria: 23000, descuento_isapre: 40000},
  {nombre_personal: "Elsa", apellidop_personal: "Debose", apellidom_personal: "Rapina", rut_personal: "24250536-0", isapre_id: 2, banco_id: 2, subcategorium_id: 2, tipocontrato_id: 5, centrocosto_id: 1, afp_id: 5, personal_activo: true, fecha_ingreso: "2016-10-15", sindicato_id: 2, numero_cuenta: nil, cargas_familiar: 4, cotizacion_voluntaria: 0, descuento_isapre: 100000},
  {nombre_personal: "Vanessa", apellidop_personal: "Rua", apellidom_personal: "Morales", rut_personal: "18831241-1", isapre_id: 8, banco_id: 18, subcategorium_id: 5, tipocontrato_id: 4, centrocosto_id: 1, afp_id: 6, personal_activo: true, fecha_ingreso: "2015-11-15", sindicato_id: 2, numero_cuenta: 69450002, cargas_familiar: 1, cotizacion_voluntaria: 0, descuento_isapre: 100000},
  {nombre_personal: "Lewis", apellidop_personal: "De la Fuente", apellidom_personal: "Williams", rut_personal: "7048229-0", isapre_id: 1, banco_id: 3, subcategorium_id: 3, tipocontrato_id: 5, centrocosto_id: 1, afp_id: 3, personal_activo: true, fecha_ingreso: "2016-11-15", sindicato_id: 3, numero_cuenta: 54123412, cargas_familiar: 2, cotizacion_voluntaria: 0, descuento_isapre: 80000},
  {nombre_personal: "Melinda", apellidop_personal: "Almonte", apellidom_personal: "Venegas", rut_personal: "9253590-8", isapre_id: 8, banco_id: 5, subcategorium_id: 4, tipocontrato_id: 3, centrocosto_id: 1, afp_id: 4, personal_activo: true, fecha_ingreso: "2015-11-15", sindicato_id: 1, numero_cuenta: 9899000, cargas_familiar: 1, cotizacion_voluntaria: 40000, descuento_isapre: 50000},
  {nombre_personal: "Ceferino", apellidop_personal: "Tafoya", apellidom_personal: "Guevara", rut_personal: "16080189-1", isapre_id: 7, banco_id: 16, subcategorium_id: 5, tipocontrato_id: 5, centrocosto_id: 1, afp_id: 3, personal_activo: true, fecha_ingreso: "2015-11-15", sindicato_id: 3, numero_cuenta: 875645343, cargas_familiar: 1, cotizacion_voluntaria: 0, descuento_isapre: 90000},
  {nombre_personal: "Larry", apellidop_personal: "Huerta", apellidom_personal: "Colunga", rut_personal: "11583605-6", isapre_id: 4, banco_id: 17, subcategorium_id: 2, tipocontrato_id: 5, centrocosto_id: 1, afp_id: 6, personal_activo: true, fecha_ingreso: "2015-11-15", sindicato_id: 2, numero_cuenta: 4123213, cargas_familiar: 1, cotizacion_voluntaria: 0, descuento_isapre: 76000},
  {nombre_personal: "Jovianne", apellidop_personal: "Velásquez", apellidom_personal: "Ulibarri", rut_personal: "24145055-4", isapre_id: 9, banco_id: 5, subcategorium_id: 6, tipocontrato_id: 5, centrocosto_id: 1, afp_id: 6, personal_activo: true, fecha_ingreso: "2016-11-15", sindicato_id: 3, numero_cuenta: 8765789, cargas_familiar: 0, cotizacion_voluntaria: 20000, descuento_isapre: 40000},
  {nombre_personal: "Kaled", apellidop_personal: "Santillán", apellidom_personal: "Vázquez", rut_personal: "16648303-4", isapre_id: 6, banco_id: 8, subcategorium_id: 3, tipocontrato_id: 4, centrocosto_id: 1, afp_id: 6, personal_activo: true, fecha_ingreso: "2016-11-15", sindicato_id: 1, numero_cuenta: 9878723, cargas_familiar: 2, cotizacion_voluntaria: 30000, descuento_isapre: 35000},
  {nombre_personal: "Uziel", apellidop_personal: "Mora", apellidom_personal: "Rodríguez", rut_personal: "12847354-8", isapre_id: 7, banco_id: 4, subcategorium_id: 5, tipocontrato_id: 5, centrocosto_id: 1, afp_id: 5, personal_activo: true, fecha_ingreso: "2016-11-15", sindicato_id: 3, numero_cuenta: 23123133, cargas_familiar: 1, cotizacion_voluntaria: 45000, descuento_isapre: 70000},
  {nombre_personal: "Eulalia", apellidop_personal: "Aragón", apellidom_personal: "Rolón", rut_personal: "15473179-2", isapre_id: 4, banco_id: 7, subcategorium_id: 1, tipocontrato_id: 3, centrocosto_id: 1, afp_id: 2, personal_activo: true, fecha_ingreso: "2016-11-15", sindicato_id: 3, numero_cuenta: 2673784, cargas_familiar: 1, cotizacion_voluntaria: 30000, descuento_isapre: 70000},
  {nombre_personal: "Amaro", apellidop_personal: "Rosas", apellidom_personal: "Ramírez", rut_personal: "11526897-k", isapre_id: 5, banco_id: 5, subcategorium_id: 1, tipocontrato_id: 4, centrocosto_id: 1, afp_id: 3, personal_activo: true, fecha_ingreso: "2016-11-15", sindicato_id: 2, numero_cuenta: 45678900, cargas_familiar: 1, cotizacion_voluntaria: 0, descuento_isapre: 60000}
])
Sindicato.create!([
  {nombre_sindicato: "Sindicato trabajadores N°1", cuota_sindical: 10000},
  {nombre_sindicato: "Sindicato trabajadores N°2", cuota_sindical: 5000},
  {nombre_sindicato: "Sin sindicato", cuota_sindical: 0}
])
Subcategorium.create!([
  {subcategoria: "Ingeniero(a) en Computacion", categorium_id: 5},
  {subcategoria: "Ingeniero(a) en Información y Control de Gestión", categorium_id: 5},
  {subcategoria: "Mantencion de Equipos Industriales", categorium_id: 4},
  {subcategoria: "Administrativo en Relaciones Comerciales", categorium_id: 1},
  {subcategoria: "Ingeniero(a) Civil Industrial", categorium_id: 5},
  {subcategoria: "Servicios de Alimentacion", categorium_id: 3}
])
Tipocontrato.create!([
  {tipo_contrato: "Contrato a plazo 120 días"},
  {tipo_contrato: "Contrato a plazo 90 días"},
  {tipo_contrato: "Contrato indefinido"},
  {tipo_contrato: "Contrato por Obras"},
  {tipo_contrato: "Contrato a plazo anual"}
])
TopesLegale.create!([
  {topeMinimo: nil, topeMaximo: 1957655, valor_uf: nil, cantidad_uf: 74.3, detalle: "Renta tope para afiliados a una Afp"},
  {topeMinimo: nil, topeMaximo: 1317399, valor_uf: nil, cantidad_uf: 50.0, detalle: "Tope para APV"}
])
User.create!([
  {nombre: "Diego Nicolas", apellido_paterno: "Gonzalez", apellido_materno: "Cuevas", email: "diegongc@ic.uach.cl", rut_usuario: "17694123-5", tipo_usuario: "Administrador", password_digest: "$2a$10$3cL5e2qD/3hCHZ.CJT/PYOKvFHTaOGlOV8hmGLJ887mCuR46f8sbm"},
  {nombre: "Leandra", apellido_paterno: "Moreno", apellido_materno: "Soto", email: "leandra@uach.cl", rut_usuario: "1000007-6", tipo_usuario: "Empleado", password_digest: "$2a$10$A2gzRxCHJTaDA17.EcCwnuWdnKXUj9K8ehySAoXsPV6E988g0odwC"},
  {nombre: "Tamara Soledad", apellido_paterno: "Cardenas", apellido_materno: "Nitor", email: "tamara@uach.cl", rut_usuario: "18408461-9", tipo_usuario: "Empleado", password_digest: "$2a$10$2xygdTe4NtIAvyivkQEgUucTCg6G4tHDVoYMliommYiAZvZFjbedW"},
  {nombre: "Silvino", apellido_paterno: "Grijalva", apellido_materno: "Marroquín", email: "silvino@gmail.com", rut_usuario: "13453241-6", tipo_usuario: "Empleado", password_digest: "$2a$10$Pvya5dFATQbPznmkE1LU6.J998l.ThimRymacImZBn67XkWtOO6oW"},
  {nombre: "Edesio", apellido_paterno: "Matías", apellido_materno: "Valdés", email: "edesio@gmail.com", rut_usuario: "14262196-7", tipo_usuario: "Empleado", password_digest: "$2a$10$FOOWmCHQOBPc3PTwIxoeouoqDFdp4ME.tHei3wo3UfcIyd0WvOOLK"},
  {nombre: "Imperio", apellido_paterno: "Rolón", apellido_materno: "Galarza", email: "imperio@gmail.com", rut_usuario: "23593222-9", tipo_usuario: "Empleado", password_digest: "$2a$10$spLoPndOsjNXtyl36WDqvuKmQ1n5XU4q0C.gqIbXNQOZpWACHWH1."},
  {nombre: "Denna", apellido_paterno: "Carranza", apellido_materno: "Carrión", email: "denna@gmail.com", rut_usuario: "11120351-2", tipo_usuario: "Empleado", password_digest: "$2a$10$PGyVLusCkXZ/aKmS0i3TCO/YxFE4X209kDRbLwAdaDxPzpmIIRoCK"},
  {nombre: "Nelly", apellido_paterno: "Pirogova", apellido_materno: "Colón", email: "nelly@gmail.com", rut_usuario: "20973466-4", tipo_usuario: "Empleado", password_digest: "$2a$10$oC639mRb1EfXhWAA6K8PqunwSmLl.3ooYUmsA6EpZGg3VXhawZHnK"},
  {nombre: "Scott", apellido_paterno: "Callahan", apellido_materno: "Callahan", email: "scott@gmail.com", rut_usuario: "12771707-9", tipo_usuario: "Empleado", password_digest: "$2a$10$acuOWZZI0S2PmZOaJDBTGeSnb8bUZ7RLt/Hg1wbcGvWCFNhtmGZBi"},
  {nombre: "Augusta", apellido_paterno: "Cunqueiro", apellido_materno: "Reyes", email: "augusto@gmail.com", rut_usuario: "20346608-0", tipo_usuario: "Empleado", password_digest: "$2a$10$QkNVdoa3Ld4puN3O2K4xgufcdZvMuwYVjXV0y9LgPesIf/SILg13q"},
  {nombre: "Elsa", apellido_paterno: "Debose", apellido_materno: "Rapina", email: "elsa@gmail.com", rut_usuario: "24250536-0", tipo_usuario: "Empleado", password_digest: "$2a$10$5OYdIeFcBeDqGTnse01ybu9xPcMKchoVJoRSZEJB6enHyW.aH1lIK"},
  {nombre: "Vanessa", apellido_paterno: "Rua", apellido_materno: "Morales", email: "vanessa@gmail.com", rut_usuario: "18831241-1", tipo_usuario: "Empleado", password_digest: "$2a$10$qwtYz19JHe8b6OvjHzeoHewnEIXlgJXMbO5YEMF8/n2KyXMfCapAC"},
  {nombre: "Lewis", apellido_paterno: "De la Fuente", apellido_materno: "Williams", email: "lewis@gmail.com", rut_usuario: "7048229-0", tipo_usuario: "Empleado", password_digest: "$2a$10$5eiSqKA.VSsuWbfBUjDlO.F4g9P75XNhiSc/Nicyt.9X4uxFZ4McC"},
  {nombre: "Melinda", apellido_paterno: "Almonte", apellido_materno: "Venegas", email: "melinda@gmail.com", rut_usuario: "9253590-8", tipo_usuario: "Empleado", password_digest: "$2a$10$LP25YAYZ6dODBIRhooYjXeQrFwI8S4NEo82ZcISo8/yz8MEtqWEKe"},
  {nombre: "Ceferino", apellido_paterno: "Tafoya", apellido_materno: "Guevara", email: "ceferino@gmail.com", rut_usuario: "16080189-1", tipo_usuario: "Empleado", password_digest: "$2a$10$o88UR7imG8GrUg9dGu1It./u.l3JLLeALoc/kz9HoimldaBnrszwW"},
  {nombre: "Larry", apellido_paterno: "Huerta", apellido_materno: "Colunga", email: "larry@gmail.com", rut_usuario: "11583605-6", tipo_usuario: "Empleado", password_digest: "$2a$10$zLFligvIYcE6uHX3sQhqme0D/O1BZ4QNqR12y/mKfGqHky/k/rd8a"},
  {nombre: "Jovianne", apellido_paterno: "Velásquez", apellido_materno: "Ulibarri", email: "jovianne@gmail.com", rut_usuario: "24145055-4", tipo_usuario: "Empleado", password_digest: "$2a$10$OMEcFk9r4N8yHOz/XbLfmO7VrOywr5PgD9YNmjeVYP15hezhdrIpm"},
  {nombre: "Kaled", apellido_paterno: "Santillán", apellido_materno: "Vázquez", email: "kaled@gmail.com", rut_usuario: "16648303-4", tipo_usuario: "Empleado", password_digest: "$2a$10$FeuWIlrDA1rUo/MrutA78OJHkSxDTgj84j9uicWuUly3P0CbC32Se"},
  {nombre: "Uziel", apellido_paterno: "Mora", apellido_materno: "Rodríguez", email: "uziel@gmail.com", rut_usuario: "12847354-8", tipo_usuario: "Empleado", password_digest: "$2a$10$2z6QIrUdt.cq9KlrCJYMk.ADjfoTrVwEn86k24O7OBjXYwImLCPtK"},
  {nombre: "Eulalia", apellido_paterno: "Aragón", apellido_materno: "Rolón", email: "eulalia@gmail.com", rut_usuario: "15473179-2", tipo_usuario: "Empleado", password_digest: "$2a$10$R9nLXEQqkRD6e2Ys5DNnFeukabrBHJUo4RjwiBbNH7WpjPSSXv3Le"},
  {nombre: "Amaro", apellido_paterno: "Rosas", apellido_materno: "Ramírez", email: "amaro@gmail.com", rut_usuario: "11526897-k", tipo_usuario: "Empleado", password_digest: "$2a$10$eEfbvcKljyP9KL4ZJ7VhYubQmhQEiVwHNKGYiEIChHJx/DJRHT4ia"}
])
