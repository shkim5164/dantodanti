class CreateBlacklists < ActiveRecord::Migration
  def change
    create_table :blacklists do |t|
      
      t.string :name
      t.string :major
      t.string :number #도대체 어떤 number?;;

      t.timestamps null: false
    end
  end
end
