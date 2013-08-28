class CreateMeets < ActiveRecord::Migration
  def change
    create_table :meets do |t|
      t.text :content

      t.timestamps
    end
  end
end
