class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
	  t.string :title
	  t.text :caption
	  t.text :imgsrc
	  t.text :href
      t.string :avatars
      t.integer :foodtype
      t.integer :price
      t.timestamps
    end
  end
end
