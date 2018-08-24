class AddUserattributeToUser < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :userdepartment, :string
    add_column :users, :usernumber, :string
    add_column :users, :userage, :string
    
  end
end
