class FixPhenylalanineName < ActiveRecord::Migration
  def change
    rename_column :foods, :phenylalanine, :phenylalanine_tyrosine
  end
end
