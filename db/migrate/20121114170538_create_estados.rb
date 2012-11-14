class CreateEstados < ActiveRecord::Migration
  def self.up
    create_table :estados do |t|
      t.string :descripcion, :limit => 40
    end

    Estado.create(:descripcion => "CAPTURADO")
    Estado.create(:descripcion => "CONFIRMACION")
    Estado.create(:descripcion => "ASISTENCIA")
  end

  def self.down
    drop_table :estados
  end
end
