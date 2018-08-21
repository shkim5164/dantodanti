class CreateSuups < ActiveRecord::Migration
  def change
    create_table :suups do |t|
      t.string :title
      t.string :content
      t.integer :mentor_id
      t.timestamp :sttime
      t.timestamp :endtime
      t.string :place
      t.string :phone
      t.integer :subject
      t.integer :limitman
      
      t.timestamps null: false
    end
  end
end
