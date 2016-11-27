json.extract! user, :id, :nombre, :apellido_paterno, :apellido_materno, :email, :created_at, :updated_at
json.url user_url(user, format: :json)