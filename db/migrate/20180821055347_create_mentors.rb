class CreateMentors < ActiveRecord::Migration
  def change
    create_table :mentors do |t|
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
