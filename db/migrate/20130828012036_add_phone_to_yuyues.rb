class AddPhoneToYuyues < ActiveRecord::Migration
  def change
    add_column :yuyues, :phone, :string
  end
end
