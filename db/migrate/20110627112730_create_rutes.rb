class CreateRutes < ActiveRecord::Migration
  def self.up
    create_table :rutes do |t|
      t.string :rute

      t.timestamps
    end
  end

  def self.down
    drop_table :rutes
  end
end
