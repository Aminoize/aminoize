class RemoveIdFromFoods < ActiveRecord::Migration
  def change
    remove_column :foods, :food_id
  end
end
