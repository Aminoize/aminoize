class CreateAcids < ActiveRecord::Migration
  def change
    create_table :acids do |t|
      t.float :tryptophan
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
