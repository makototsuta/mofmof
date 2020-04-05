class ChangeBlogsToAddStations < ActiveRecord::Migration[5.2]
  def change
    rename_table :blogs, :add_stations
  end
end
