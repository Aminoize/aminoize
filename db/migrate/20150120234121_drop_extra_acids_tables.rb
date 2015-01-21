class DropExtraAcidsTables < ActiveRecord::Migration
  def change
    remove_column :foods, :rectified_tryptophan
    remove_column :foods, :rectified_phenylalanine
    remove_column :foods, :rectified_lysine
  end
end
