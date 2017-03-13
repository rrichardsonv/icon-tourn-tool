class CreateTournaments < ActiveRecord::Migration[5.0]
  def change
    create_table :tournaments do |t|
      t.integer :convention_id
      t.integer :entry_size
      t.datetime :start_time

      t.timestamps
    end
  end
end
