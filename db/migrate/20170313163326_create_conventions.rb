class CreateConventions < ActiveRecord::Migration[5.0]
  def change
    create_table :conventions do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.string :logo_url
      t.string :banner_url
      t.string :stream_link

      t.timestamps
    end
  end
end
