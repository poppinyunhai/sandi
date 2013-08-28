class CreateYuyues < ActiveRecord::Migration
  def change
    create_table :yuyues do |t|
      t.string :name
      t.string :email
      t.integer :qq
      t.integer :type_id
      t.string :bei

      t.timestamps
    end
  end
end
