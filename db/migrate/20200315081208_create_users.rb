class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :property
      t.string :rent
      t.string :address
      t.string :year
      t.string :note

      t.timestamps
    end
  end
end
