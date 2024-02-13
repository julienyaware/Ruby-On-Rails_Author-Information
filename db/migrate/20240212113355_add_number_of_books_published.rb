class AddNumberOfBooksPublished < ActiveRecord::Migration[7.1]
  def change
    add_column :authors, :number_of_books_published, :integer
  end
end
