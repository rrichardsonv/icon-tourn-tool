class AddChallongeToTourneys < ActiveRecord::Migration[5.0]
  def change
    add_column(:tournaments, :challonge_name, :string)
    add_index(:tournaments, :challonge_name)
  end
end
