class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true
      t.references :food, foreign_key: true
      t.string :write_date
      t.string :content
      t.string :pet_kind
      t.string :pet_size
      t.string :pet_age

      t.timestamps
    end
  end
end
