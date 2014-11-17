class AddBelongsToToAcids < ActiveRecord::Migration
  def change
    add_column :acids, :food_id, :integer
  end
end
