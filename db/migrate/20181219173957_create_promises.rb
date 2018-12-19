class CreatePromises < ActiveRecord::Migration[5.2]
  def change
    create_table :promises do |t|
      t.string :description
      t.string :giver
      t.integer :status, default: 0
    end
  end
end
