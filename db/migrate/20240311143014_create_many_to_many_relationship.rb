class CreateManyToManyRelationship < ActiveRecord::Migration[7.1]
  def change
    create_table :AuthorsPublishers do |t|
      t.references :authors, null: false, foreign_key: true
      t.references :publishers, null: false, foreign_key: true
      t.timestamps
    end
  end
end
