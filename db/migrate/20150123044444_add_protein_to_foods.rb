class AddProteinToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :protein, :float
  end
end
