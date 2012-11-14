class CreateBitacoras < ActiveRecord::Migration
  def self.up
    create_table :bitacoras do |t|
      t.integer :invitado_id
      t.integer :estado_id
      t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :bitacoras
  end
end
