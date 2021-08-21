class AddPasswordToUrls < ActiveRecord::Migration[6.1]
  def change
    add_column :urls, :password, :string
  end
end
