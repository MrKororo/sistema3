Empresa.create!([
  {nombre_empresa: "GonzalezSA", rut_empresa: "1234567890", giro: "Informatica", domicilio: "Calle falsa 123", email: "falso@gmail.com", website: "www.falso.com", telefono: "922901010", image_file_name: "logo.jpg", image_content_type: "image/jpeg", image_file_size: 9145, image_updated_at: "2016-12-14 14:53:41"}
])

Afp.create!([
  {afp: "Capital", descuento_afp: 11.44},
  {afp: "Cuprum", descuento_afp: 11.48},
  {afp: "Habitat", descuento_afp: 11.27},
  {afp: "Modelo", descuento_afp: 10.77},
  {afp: "PlanVital", descuento_afp: 10.41},
  {afp: "Provida", descuento_afp: 11.54}
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
AsignacionFamiliar.create!([
  {tramo: "A", monto: 10577, requisitoMinimo: 0, requisitoMaximo: 270196},
  {tramo: "B", monto: 6491, requisitoMinimo: 270196, requisitoMaximo: 394651},
  {tramo: "C", monto: 2051, requisitoMinimo: 394651, requisitoMaximo: 615521},
  {tramo: "D", monto: 0, requisitoMinimo: 615521, requisitoMaximo: 9999999}
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
  {banco: "Scotiabank Chile", tipo_cuenta: "Cuenta Corriente"},
  {banco: "Banco Estado", tipo_cuenta: "Cuenta Debito"}
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

Centrocosto.create!([
  {nombre: "Centro Puerto Montt", codigo: "065", detalle_centro: "Centro destinado a Puerto Montt"}
])
Tipocontrato.create!([
  {tipo_contrato: "Contrato a plazo 120 días"},
  {tipo_contrato: "Contrato a plazo 90 días"},
  {tipo_contrato: "Contrato indefinido"},
  {tipo_contrato: "Contrato por Obras"},
  {tipo_contrato: "Contrato a plazo anual"}
])
TopesLegale.create!([
  {topeMaximo: 1957655, valor_uf: nil, cantidad_uf: 74.3, detalle: "Renta tope para afiliados a una Afp"},
  {topeMaximo: 1317399, valor_uf: nil, cantidad_uf: 50.0, detalle: "Tope para APV"}
])
Categorium.create!([
  {categoria: "Funcionario"},
  {categoria: "Profesor"},
  {categoria: "Servicios Adicionales"},
  {categoria: "Mantencion"},
  {categoria: "Ingeniero"}
])
Subcategorium.create!([
  {subcategoria: "Ingeniero(a) en Computacion", categorium_id: 5},
  {subcategoria: "Ingeniero(a) en Información y Control de Gestión", categorium_id: 5}
])
Asignacion.create!([
  {asignacion: 0, detalle_asignacion: "Sin Asignacion", subcategorium_id: 1},
  {asignacion: 0, detalle_asignacion: "Sin Asignacion", subcategorium_id: 2},
  {asignacion: 50000, detalle_asignacion: "Almuerzos", subcategorium_id: 2}
])
Habere.create!([
  {sueldo_base: 1500000, horas_pactadas: 180, valor_hora: 8333, subcategorium_id: 1},
  {sueldo_base: 850000, horas_pactadas: 180, valor_hora: 4722, subcategorium_id: 2}
])
Bonificacion.create!([
  {bono: 0, detalle_bono: "Sin Bonificacion", subcategorium_id: 1},
  {bono: 0, detalle_bono: "Sin Bonificacion", subcategorium_id: 2},
  {bono: 25000, detalle_bono: "Bono locomocion mensual", subcategorium_id: 1},
  {bono: 25000, detalle_bono: "Bono locomocion mensual", subcategorium_id: 2},
  {bono: 50000, detalle_bono: "Bono productividad", subcategorium_id: 1}
])
Sindicato.create!([
  {nombre_sindicato: "Sindicato trabajadores N°1", cuota_sindical: 10000},
  {nombre_sindicato: "Sindicato trabajadores N°2", cuota_sindical: 5000},
  {nombre_sindicato: "Sin sindicato", cuota_sindical: 0}
])

Personal.create!([
  {nombre_personal: "Diego Nicolas", apellidop_personal: "Gonzalez", apellidom_personal: "Cuevas", rut_personal: "17694123-5", isapre_id: 7, banco_id: 12, subcategorium_id: 1, tipocontrato_id: 3, centrocosto_id: 1, afp_id: 5, personal_activo: true, fecha_ingreso: "2016-12-01", sindicato_id: 1, numero_cuenta: 69440002, cargas_familiar: 0, cotizacion_voluntaria: 0, descuento_isapre: 0},
  {nombre_personal: "Leandra", apellidop_personal: "Moreno", apellidom_personal: "Soto", rut_personal: "1000007-6", isapre_id: 3, banco_id: 1, subcategorium_id: 1, tipocontrato_id: 3, centrocosto_id: 1, afp_id: 1, personal_activo: true, fecha_ingreso: "2016-12-12", sindicato_id: 3, numero_cuenta: nil, cargas_familiar: 0, cotizacion_voluntaria: 0, descuento_isapre: 0},
  {nombre_personal: "Tamara Soledad", apellidop_personal: "Cardenas", apellidom_personal: "Nitor", rut_personal: "18408461-9", isapre_id: 9, banco_id: 2, subcategorium_id: 2, tipocontrato_id: 3, centrocosto_id: 1, afp_id: 6, personal_activo: true, fecha_ingreso: "2016-11-13", sindicato_id: 3, numero_cuenta: nil, cargas_familiar: 0, cotizacion_voluntaria: 0, descuento_isapre: 0}
])

Liquidacion.create!([
  {asignacion_id: 1, habere_id: 1, bonificacion_id: 5, descuento_adicional_id: nil, personal_id: 1, fecha_pago: "2016-12-14", porcentaje_afp: 11.54, descuento_afp: 178863, descuento_isapre: 85000, impuesto: 43637, cotizacion_voluntaria: 0, horas_trabajadas: 180.0, remuneracion: 1499940, cantidad_horas_extra: 0, horas_extra: 0, vacaciones: 0.0, total_imponible: 1549940, sindicato: 10000, total_haberes: 1549940, desc_legales: 263863, desc_varios: 53637, liquido_pagar: 1232440, asignacion_familiar: 0},
  {asignacion_id: 1, habere_id: 1, bonificacion_id: 3, descuento_adicional_id: nil, personal_id: 1, fecha_pago: "2016-12-14", porcentaje_afp: 10.41, descuento_afp: 170457, descuento_isapre: 86000, impuesto: 0, cotizacion_voluntaria: 0, horas_trabajadas: 180.0, remuneracion: 1499940, cantidad_horas_extra: 9, horas_extra: 112496, vacaciones: 0.0, total_imponible: 1637436, sindicato: 10000, total_haberes: 1637436, desc_legales: 256457, desc_varios: 10000, liquido_pagar: 1370979, asignacion_familiar: nil},
  {asignacion_id: 3, habere_id: 2, bonificacion_id: 4, descuento_adicional_id: nil, personal_id: 3, fecha_pago: "2016-12-14", porcentaje_afp: 11.54, descuento_afp: 95521, descuento_isapre: 90000, impuesto: 0, cotizacion_voluntaria: 30000, horas_trabajadas: 170.0, remuneracion: 802740, cantidad_horas_extra: 0, horas_extra: 0, vacaciones: 0.0, total_imponible: 827740, sindicato: 0, total_haberes: 877740, desc_legales: 185521, desc_varios: 30000, liquido_pagar: 662219, asignacion_familiar: nil},
  {asignacion_id: 3, habere_id: 2, bonificacion_id: 4, descuento_adicional_id: nil, personal_id: 3, fecha_pago: "2016-11-01", porcentaje_afp: 11.44, descuento_afp: 107388, descuento_isapre: 90000, impuesto: 0, cotizacion_voluntaria: 10000, horas_trabajadas: 180.0, remuneracion: 849960, cantidad_horas_extra: 9, horas_extra: 63747, vacaciones: 0.0, total_imponible: 938707, sindicato: 5000, total_haberes: 988707, desc_legales: 197388, desc_varios: 15000, liquido_pagar: 776319, asignacion_familiar: nil},
  {asignacion_id: 1, habere_id: 1, bonificacion_id: 3, descuento_adicional_id: nil, personal_id: 1, fecha_pago: "2016-12-31", porcentaje_afp: 11.54, descuento_afp: 188960, descuento_isapre: 90000, impuesto: 0, cotizacion_voluntaria: 0, horas_trabajadas: 180.0, remuneracion: 1499940, cantidad_horas_extra: 9, horas_extra: 112496, vacaciones: 0.0, total_imponible: 1637436, sindicato: 10000, total_haberes: 1637436, desc_legales: 278960, desc_varios: 10000, liquido_pagar: 1348476, asignacion_familiar: nil} 
])

User.create!([
  {nombre: "Diego Nicolas", apellido_paterno: "Gonzalez", apellido_materno: "Cuevas", email: "diegongc@ic.uach.cl", rut_usuario: "17694123-5", tipo_usuario: "Administrador", password_digest: "$2a$10$3cL5e2qD/3hCHZ.CJT/PYOKvFHTaOGlOV8hmGLJ887mCuR46f8sbm"},
  {nombre: "Leandra", apellido_paterno: "Moreno", apellido_materno: "Soto", email: "leandra@uach.cl", rut_usuario: "1000007-6", tipo_usuario: "Empleado", password_digest: "$2a$10$A2gzRxCHJTaDA17.EcCwnuWdnKXUj9K8ehySAoXsPV6E988g0odwC"},
  {nombre: "Tamara Soledad", apellido_paterno: "Cardenas", apellido_materno: "Nitor", email: "tamara@uach.cl", rut_usuario: "18408461-9", tipo_usuario: "Empleado", password_digest: "$2a$10$2xygdTe4NtIAvyivkQEgUucTCg6G4tHDVoYMliommYiAZvZFjbedW"}
])
Certificate.create!([
  {personal_id: 1, rut_personal: "17694123-5", motivo: "Trámites de asignación familiar"},
  {personal_id: 2, rut_personal: "1000007-6", motivo: "Trámites de asignación familiar"},
  {personal_id: 3, rut_personal: "18408461-9", motivo: "Trámites Judiciales "},
])