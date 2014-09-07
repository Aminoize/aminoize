class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :foods, :typtophan, :tryptophan
  end
end
