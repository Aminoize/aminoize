class FixMethionineName < ActiveRecord::Migration
  def change
    rename_column :foods, :methionine, :methionine_cysteine
  end
end
