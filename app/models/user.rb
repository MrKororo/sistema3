class User < ActiveRecord::Base
  has_secure_password
  validates :nombre, presence: true
  validates :apellido_paterno, presence: true
  validates :apellido_materno, presence: true
  validates :email, presence: true, uniqueness: true, format: {  with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }

  def to_s
  	"#{nombre} #{apellido_paterno}"
  end
end
