class AddDetailsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :company_name, :string
    add_column :users, :contact_phone, :string
    add_column :users, :web_address, :string
    add_column :users, :team_size, :string
  end
end
