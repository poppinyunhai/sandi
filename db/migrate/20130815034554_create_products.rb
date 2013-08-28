class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :content
      t.integer :type_id

      t.timestamps
    end
  end
end
