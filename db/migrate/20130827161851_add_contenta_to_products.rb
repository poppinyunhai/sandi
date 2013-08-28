class AddContentaToProducts < ActiveRecord::Migration
  def change
    add_column :products, :contenta, :text
  end
end
