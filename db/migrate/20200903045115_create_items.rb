class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :user_id
      t.string :name
      t.integer :price
      t.text    :text
      t.text    :image

      t.timestamps
    end
  end
end
