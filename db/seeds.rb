Tipocontrato.create!([
  {tipo_contrato: "Contrato a plazo 120 días"},
  {tipo_contrato: "Contrato a plazo 90 días"},
  {tipo_contrato: "Contrato indefinido"},
  {tipo_contrato: "Contrato por Obras"},
  {tipo_contrato: "Contrato a plazo anual"}
])
User.create!([
  {nombre: "Diego", apellido_paterno: "Gonzalez", apellido_materno: "Cuevas", email: "diegongc@ic.uach.cl", password_digest: "$2a$10$3cL5e2qD/3hCHZ.CJT/PYOKvFHTaOGlOV8hmGLJ887mCuR46f8sbm"}
])
Centrocosto.create!([
  {nombre: "Centro Puerto Montt", codigo: "065", detalle_centro: "Centro destinado a Puerto Montt"}
])
Empresa.create!([
  {nombre_empresa: "GonzalezSA", rut_empresa: "1234567890", giro: "Informatica", domicilio: "Calle falsa 123", email: "falso@gmail.com", website: "www.falso.com", telefono: "922901010"}
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

Sindicato.create!([
  {nombre_sindicato: "Sindicato trabajadores N°1", cuota_sindical: 10000},
  {nombre_sindicato: "Sindicato trabajadores N°2", cuota_sindical: 5000},
  {nombre_sindicato: "Sin sindicato", cuota_sindical: 0}
])
Afp.create!([
  {afp: "Capital", descuento_afp: 11.44},
  {afp: "Cuprum", descuento_afp: 11.48},
  {afp: "Habitat", descuento_afp: 11.27},
  {afp: "Modelo", descuento_afp: 10.77},
  {afp: "PlanVital", descuento_afp: 10.41},
  {afp: "Provida", descuento_afp: 11.54}
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
Categorium.create!([
  {categoria: "Secretaria"},
  {categoria: "Funcionario"},
  {categoria: "Profesor"},
  {categoria: "Servicios Adicionales"},
  {categoria: "Mantencion"},
  {categoria: "Ingeniero"}
])

