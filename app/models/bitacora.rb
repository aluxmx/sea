class Bitacora < ActiveRecord::Base
  belongs_to :invitado
  belongs_to :estado
  belongs_to :user
end
