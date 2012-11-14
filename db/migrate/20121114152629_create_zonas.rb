class CreateZonas < ActiveRecord::Migration
  def self.up
    create_table :zonas do |t|
      t.string :descripcion, :limit => 100
    end

    Zona.create(:descripcion => "VERDE")
    Zona.create(:descripcion => "AZUL")
    Zona.create(:descripcion => "ROJA")
  end

  def self.down
    drop_table :zonas
  end
end
