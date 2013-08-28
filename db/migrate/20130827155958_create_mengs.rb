class CreateMengs < ActiveRecord::Migration
  def change
    create_table :mengs do |t|
      t.text :content

      t.timestamps
    end
  end
end
