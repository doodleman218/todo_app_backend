class CreateQuests < ActiveRecord::Migration[6.0]
  def change
    create_table :quests do |t|
      t.string :content
      t.integer :location_id

      t.timestamps
    end
  end
end
