class CreateJia < ActiveRecord::Migration
  def change
    create_table :jia do |t|
      t.text :content

      t.timestamps
    end
  end
end
