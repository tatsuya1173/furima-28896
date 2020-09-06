class AddColumnUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :password, :string
    add_column :users, :nickname, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :first_name_kana, :string
    add_column :users, :last_name_kana, :string
    add_column :users, :birth_day, :date

  end
end
