class AddThreonineToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :threonine, :float
  end
end
