class CreateArts < ActiveRecord::Migration
  def change
    create_table :arts do |t|
      t.text :content

      t.timestamps
    end
  end
end
