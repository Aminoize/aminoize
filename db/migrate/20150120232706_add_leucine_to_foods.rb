class AddLeucineToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :leucine, :float
  end
end
