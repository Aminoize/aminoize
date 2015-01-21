class AddHistidineToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :histidine, :float
  end
end
