class CreateInvitados < ActiveRecord::Migration
  def self.up
    create_table :invitados do |t|
      t.integer :folio
      t.string :paterno
      t.string :materno
      t.string :nombre
      t.string :telefono
      t.string :direccion
      t.integer :zona_id

      t.timestamps
    end
  end

  def self.down
    drop_table :invitados
  end
end
