class AddAgeToAuthors < ActiveRecord::Migration[7.1]
  def change
    add_column :authors, :age, :integer
  end
end
