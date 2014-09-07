class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|

      t.float :typtophan
      t.float :rectified_tryptophan
      t.float :methionine
      t.float :phenylalanine
      t.float :rectified_phenylalanine
      t.float :lysine
      t.float :rectified_lysine

      t.timestamps
    end
  end
end
