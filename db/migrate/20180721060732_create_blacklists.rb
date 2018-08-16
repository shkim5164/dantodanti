class CreateBlacklists < ActiveRecord::Migration
  def change
    create_table :blacklists do |t|
      
      t.string :name
      t.string :major
      t.string :number

      t.timestamps null: false
    end
  end
end
