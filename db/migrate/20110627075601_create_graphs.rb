class CreateGraphs < ActiveRecord::Migration
  def self.up
    create_table :graphs do |t|
      t.string :start
      t.string :end
      t.integer :length

      t.timestamps
    end
  end

  def self.down
    drop_table :graphs
  end
end
