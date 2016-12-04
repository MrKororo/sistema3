# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161202154321) do

  create_table "afps", force: :cascade do |t|
    t.string   "afp",           limit: 255
    t.float    "descuento_afp", limit: 24
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "asignacions", force: :cascade do |t|
    t.integer  "asignacion",         limit: 4
    t.string   "detalle_asignacion", limit: 255
    t.integer  "subcategorium_id",   limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "asignacions", ["subcategorium_id"], name: "index_asignacions_on_subcategorium_id", using: :btree

  create_table "bancos", force: :cascade do |t|
    t.string   "banco",       limit: 255
    t.string   "tipo_cuenta", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "bonificacions", force: :cascade do |t|
    t.integer  "bono",             limit: 4
    t.string   "detalle_bono",     limit: 255
    t.integer  "subcategorium_id", limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "bonificacions", ["subcategorium_id"], name: "index_bonificacions_on_subcategorium_id", using: :btree

  create_table "categoria", force: :cascade do |t|
    t.string   "categoria",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "centrocostos", force: :cascade do |t|
    t.string   "nombre",         limit: 255
    t.string   "codigo",         limit: 255
    t.string   "detalle_centro", limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "certificates", force: :cascade do |t|
    t.integer  "personal_id",  limit: 4
    t.string   "rut_personal", limit: 255
    t.string   "motivo",       limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "certificates", ["personal_id"], name: "index_certificates_on_personal_id", using: :btree

  create_table "descuento_adicionals", force: :cascade do |t|
    t.integer  "descuento_adicional", limit: 4
    t.string   "detalle",             limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "empresas", force: :cascade do |t|
    t.string   "nombre_empresa",     limit: 255
    t.string   "rut_empresa",        limit: 255
    t.string   "giro",               limit: 255
    t.string   "domicilio",          limit: 255
    t.string   "email",              limit: 255
    t.string   "website",            limit: 255
    t.string   "telefono",           limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
  end

  create_table "haberes", force: :cascade do |t|
    t.integer  "sueldo_base",      limit: 4
    t.float    "horas_pactadas",   limit: 24
    t.float    "valor_hora",       limit: 24
    t.integer  "subcategorium_id", limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "haberes", ["subcategorium_id"], name: "index_haberes_on_subcategorium_id", using: :btree

  create_table "isapres", force: :cascade do |t|
    t.string   "isapre",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "liquidacions", force: :cascade do |t|
    t.integer  "asignacion_id",          limit: 4
    t.integer  "habere_id",              limit: 4
    t.integer  "bonificacion_id",        limit: 4
    t.integer  "descuento_adicional_id", limit: 4
    t.integer  "personal_id",            limit: 4
    t.date     "fecha_pago"
    t.float    "porcentaje_afp",         limit: 24
    t.integer  "descuento_afp",          limit: 4
    t.integer  "descuento_isapre",       limit: 4
    t.integer  "sindicato",              limit: 4
    t.integer  "impuesto",               limit: 4
    t.integer  "cotizacion_voluntaria",  limit: 4
    t.float    "horas_trabajadas",       limit: 24
    t.integer  "remuneracion",           limit: 4
    t.integer  "cantidad_horas_extra",   limit: 4
    t.integer  "horas_extra",            limit: 4
    t.float    "vacaciones",             limit: 24
    t.integer  "total_imponible",        limit: 4
    t.integer  "total_haberes",          limit: 4
    t.integer  "desc_legales",           limit: 4
    t.integer  "desc_varios",            limit: 4
    t.integer  "liquido_pagar",          limit: 4
    t.string   "rut_personal",           limit: 255
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "liquidacions", ["asignacion_id"], name: "index_liquidacions_on_asignacion_id", using: :btree
  add_index "liquidacions", ["bonificacion_id"], name: "index_liquidacions_on_bonificacion_id", using: :btree
  add_index "liquidacions", ["descuento_adicional_id"], name: "index_liquidacions_on_descuento_adicional_id", using: :btree
  add_index "liquidacions", ["habere_id"], name: "index_liquidacions_on_habere_id", using: :btree
  add_index "liquidacions", ["personal_id"], name: "index_liquidacions_on_personal_id", using: :btree

  create_table "personals", force: :cascade do |t|
    t.string   "nombre_personal",    limit: 255
    t.string   "apellidop_personal", limit: 255
    t.string   "apellidom_personal", limit: 255
    t.string   "rut_personal",       limit: 255
    t.integer  "isapre_id",          limit: 4
    t.integer  "banco_id",           limit: 4
    t.integer  "subcategorium_id",   limit: 4
    t.integer  "tipocontrato_id",    limit: 4
    t.integer  "centrocosto_id",     limit: 4
    t.integer  "afp_id",             limit: 4
    t.boolean  "personal_activo"
    t.date     "fecha_ingreso"
    t.integer  "sindicato_id",       limit: 4
    t.integer  "numero_cuenta",      limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "personals", ["afp_id"], name: "index_personals_on_afp_id", using: :btree
  add_index "personals", ["banco_id"], name: "index_personals_on_banco_id", using: :btree
  add_index "personals", ["centrocosto_id"], name: "index_personals_on_centrocosto_id", using: :btree
  add_index "personals", ["isapre_id"], name: "index_personals_on_isapre_id", using: :btree
  add_index "personals", ["sindicato_id"], name: "index_personals_on_sindicato_id", using: :btree
  add_index "personals", ["subcategorium_id"], name: "index_personals_on_subcategorium_id", using: :btree
  add_index "personals", ["tipocontrato_id"], name: "index_personals_on_tipocontrato_id", using: :btree

  create_table "sindicatos", force: :cascade do |t|
    t.string   "nombre_sindicato", limit: 255
    t.integer  "cuota_sindical",   limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "subcategoria", force: :cascade do |t|
    t.string   "subcategoria",  limit: 255
    t.integer  "categorium_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "subcategoria", ["categorium_id"], name: "index_subcategoria_on_categorium_id", using: :btree

  create_table "tipocontratos", force: :cascade do |t|
    t.string   "tipo_contrato", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "nombre",           limit: 255
    t.string   "apellido_paterno", limit: 255
    t.string   "apellido_materno", limit: 255
    t.string   "email",            limit: 255
    t.string   "password_digest",  limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_foreign_key "asignacions", "subcategoria"
  add_foreign_key "bonificacions", "subcategoria"
  add_foreign_key "certificates", "personals"
  add_foreign_key "haberes", "subcategoria"
  add_foreign_key "liquidacions", "asignacions"
  add_foreign_key "liquidacions", "bonificacions"
  add_foreign_key "liquidacions", "descuento_adicionals"
  add_foreign_key "liquidacions", "haberes"
  add_foreign_key "liquidacions", "personals"
  add_foreign_key "personals", "afps"
  add_foreign_key "personals", "bancos"
  add_foreign_key "personals", "centrocostos"
  add_foreign_key "personals", "isapres"
  add_foreign_key "personals", "sindicatos"
  add_foreign_key "personals", "subcategoria"
  add_foreign_key "personals", "tipocontratos"
  add_foreign_key "subcategoria", "categoria"
end
