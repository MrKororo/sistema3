json.extract! empresa, :id, :nombre_empresa, :rut_empresa, :giro, :domicilio, :email, :website, :telefono, :created_at, :updated_at
json.url empresa_url(empresa, format: :json)