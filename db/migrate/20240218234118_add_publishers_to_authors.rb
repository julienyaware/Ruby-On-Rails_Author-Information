class AddPublishersToAuthors < ActiveRecord::Migration[7.1]
  def change
    add_column :authors, :publisher, :string
  end
end
