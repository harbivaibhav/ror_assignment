class AddColsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :company_name, :string
    add_column :users, :status, :string
    add_column :users, :profile_image, :string
    add_column :users, :role, :string    
  end
end
