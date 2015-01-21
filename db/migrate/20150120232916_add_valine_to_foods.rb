class AddValineToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :valine, :float
  end
end
