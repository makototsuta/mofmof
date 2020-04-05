class ChangeUsersToPropertyInformations < ActiveRecord::Migration[5.2]
  def change
    rename_table :users, :property_informations
  end
end
