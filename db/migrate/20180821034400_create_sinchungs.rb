class CreateSinchungs < ActiveRecord::Migration
  def change
    create_table :sinchungs do |t|
      t.integer :user_id
      t.integer :suup_id
      t.timestamps null: false
    end
  end
end
