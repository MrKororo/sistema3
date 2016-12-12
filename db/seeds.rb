Afp.create!([
  {afp: "Capital", descuento_afp: 11.44},
  {afp: "Cuprum", descuento_afp: 11.48},
  {afp: "Habitat", descuento_afp: 11.27},
  {afp: "Modelo", descuento_afp: 10.77},
  {afp: "PlanVital", descuento_afp: 10.41},
  {afp: "Provida", descuento_afp: 11.54}
])
Empresa.create!([
  {nombre_empresa: "GonzalezSA", rut_empresa: "1234567890", giro: "Informatica", domicilio: "Calle falsa 123", email: "falso@gmail.com", website: "www.falso.com", telefono: "922901010", image_file_name: "logo.jpg", image_content_type: "image/jpeg", image_file_size: 9145, image_updated_at: "2016-12-04 21:08:35"}
])
Sindicato.create!([
  {nombre_sindicato: "Sindicato trabajadores N°1", cuota_sindical: 10000},
  {nombre_sindicato: "Sindicato trabajadores N°2", cuota_sindical: 5000},
  {nombre_sindicato: "Sin sindicato", cuota_sindical: 0}
])
Tipocontrato.create!([
  {tipo_contrato: "Contrato a plazo 120 días"},
  {tipo_contrato: "Contrato a plazo 90 días"},
  {tipo_contrato: "Contrato indefinido"},
  {tipo_contrato: "Contrato por Obras"},
  {tipo_contrato: "Contrato a plazo anual"}
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
User.create!([
  {nombre: "Diego", apellido_paterno: "Gonzalez", apellido_materno: "Cuevas", email: "diegongc@ic.uach.cl", password_digest: "$2a$10$3cL5e2qD/3hCHZ.CJT/PYOKvFHTaOGlOV8hmGLJ887mCuR46f8sbm"}
])
Centrocosto.create!([
  {nombre: "Centro Puerto Montt", codigo: "065", detalle_centro: "Centro destinado a Puerto Montt"}
])

Categorium.create!([
  {categoria: "Secretaria"},
  {categoria: "Funcionario"},
  {categoria: "Profesor"},
  {categoria: "Servicios Adicionales"},
  {categoria: "Mantencion"},
  {categoria: "Ingeniero"}
])
Subcategorium.create!([
  {subcategoria: "Ingeniero(a) en Computacion", categorium_id: 6}
])
Habere.create!([
  {sueldo_base: 1500000, horas_pactadas: 180.0, valor_hora: 8333.0, subcategorium_id: 1}
])
Asignacion.create!([
  {asignacion: 0, detalle_asignacion: "Sin Asignacion", subcategorium_id: 1}
])
Bonificacion.create!([
  {bono: 0, detalle_bono: "Sin Bonificacion", subcategorium_id: 1}
])
Personal.create!([
  {nombre_personal: "Diego Nicolas", apellidop_personal: "Gonzalez", apellidom_personal: "Cuevas", rut_personal: "17694123-5", isapre_id: 7, banco_id: 12, subcategorium_id: 1, tipocontrato_id: 3, centrocosto_id: 1, afp_id: 5, personal_activo: true, fecha_ingreso: "2016-12-01", sindicato_id: 1, numero_cuenta: 69440002}
])


Liquidacion.create!([
  {asignacion_id: 1, habere_id: 1, bonificacion_id: 1, descuento_adicional_id: nil, personal_id: 1, fecha_pago: "2016-12-05", porcentaje_afp: 11.27, descuento_afp: 169043, descuento_isapre: 121495, sindicato: 0, impuesto: 0, cotizacion_voluntaria: 0, horas_trabajadas: 180.0, remuneracion: 1499940, cantidad_horas_extra: 0, horas_extra: 0, vacaciones: 0.0, total_imponible: 1499940, total_haberes: 1499940, desc_legales: 290538, desc_varios: 0, liquido_pagar: 1209402, rut_personal: "17694123-5"}
])

Certificate.create!([
  {personal_id: 1, rut_personal: "17694123-5", motivo: "Trámites de asignación familiar"}
])