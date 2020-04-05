class AddPropertyInformationToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_reference :blogs, :property_information, foreign_key: true
  end
end
