class AddIsoleucineToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :isoleucine, :float
  end
end
