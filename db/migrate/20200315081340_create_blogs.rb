class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :route
      t.string :station
      t.string :minutes

      t.timestamps
    end
  end
end
