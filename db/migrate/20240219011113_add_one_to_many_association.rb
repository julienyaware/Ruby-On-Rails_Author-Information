class AddOneToManyAssociation < ActiveRecord::Migration[7.1]
  def change
    add_reference :publishers, :authors, foreign_key: true
  end
end
