class RenameAcids < ActiveRecord::Migration
  def change
    rename_table :acids, :foods
  end
end
