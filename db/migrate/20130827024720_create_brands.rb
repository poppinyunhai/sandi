class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.text :content

      t.timestamps
    end
  end
end
