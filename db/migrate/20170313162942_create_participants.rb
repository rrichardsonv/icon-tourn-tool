class CreateParticipants < ActiveRecord::Migration[5.0]
  def change
    create_table :participants do |t|
      t.string :tag
      t.integer :pin
      t.integer :wins
      t.integer :losses
      t.float :skill

      t.timestamps
    end
  end
end
