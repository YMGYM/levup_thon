class CreateSurveys < ActiveRecord::Migration[5.2]
  def change
    create_table :surveys do |t|
      t.references :user, foreign_key: true
      t.string :pet_name
      t.string :pet_size
      t.string :feed_budget
      t.boolean :canned_feed
      t.boolean :dry_feed
      t.boolean :chewing_gum
      t.boolean :freeze_dried_feed
      t.boolean :freeze_dried_snacks
      t.boolean :tartar_removal_snack

      t.timestamps
    end
  end
end
