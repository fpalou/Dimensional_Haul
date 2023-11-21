class CreateDimensions < ActiveRecord::Migration[7.1]
  def change
    create_table :dimensions do |t|
      t.string :title
      t.text :description
      t.float :reviews
      t.references :categories, null: false, foreign_key: true
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
