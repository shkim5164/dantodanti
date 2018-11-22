class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.text :content
      t.string :subject
      t.string :major
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
