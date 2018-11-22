class CreateQanswers < ActiveRecord::Migration
  def change
    create_table :qanswers do |t|
      t.integer :question_id
      t.text :content
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
