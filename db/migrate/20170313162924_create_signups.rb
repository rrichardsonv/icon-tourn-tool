class CreateSignups < ActiveRecord::Migration[5.0]
  def change
    create_table :signups do |t|
      t.integer :tournament_id
      t.integer :participant_id

      t.timestamps
    end
  end
end
