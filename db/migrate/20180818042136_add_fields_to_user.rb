class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :like, :integer
  end
end
