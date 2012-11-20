class Invitado < ActiveRecord::Base
  has_many :bitacoras
  belongs_to :zona

  def ultimo_estado
     return @last_log = Bitacora.find(:first, :conditions => ["invitado_id = ?", self.id], :order => "updated_at DESC")
  end

  def siguiente_estado
     if @last_log = Bitacora.find(:first, :conditions => ["invitado_id = ?", self.id], :order => "updated_at DESC")
          if Estado.exists?(@last_log.estado_id + 1)
            return Estado.find(@last_log.estado_id + 1)
          end
     end
     return nil
  end

  def before_save
    self.nombre.upcase!
    self.cargo.upcase!
    self.direccion.upcase!
  end

end
