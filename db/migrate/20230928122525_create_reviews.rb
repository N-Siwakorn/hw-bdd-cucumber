class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :potatoes
      t.text :comment
      t.references :user
      t.references :movie
      t.timestamps null: false
    end
  end
  def down
    drop_table :reviews
  end
end
