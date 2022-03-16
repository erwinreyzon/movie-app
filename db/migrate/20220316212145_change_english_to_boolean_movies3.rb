class ChangeEnglishToBooleanMovies3 < ActiveRecord::Migration[7.0]
  def change
    remove_column :movies, :english
  end
end
