class RenameCategoriesIdInDimensions < ActiveRecord::Migration[7.1]
  def change
    rename_column :dimensions, :categories_id, :category_id
    rename_column :dimensions, :users_id, :user_id
    rename_column :bookings, :dimensions_id, :dimension_id
    rename_column :bookings, :users_id, :user_id
  end
end
