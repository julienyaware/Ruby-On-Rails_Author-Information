class CreatePublishers < ActiveRecord::Migration[7.1]
  def change
    create_table :publishers do |t|
      t.string :publisher_name
      t.string :phone_number
      t.timestamps
    end
  end
end
