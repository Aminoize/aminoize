class RemoveAcidsFromFoods < ActiveRecord::Migration
  def change
    remove_column :foods, :tryptophan
    remove_column :foods, :rectified_tryptophan
    remove_column :foods, :methionine
    remove_column :foods, :phenylalanine
    remove_column :foods, :rectified_phenylalanine
    remove_column :foods, :lysine
    remove_column :foods, :rectified_lysine
  end
end
