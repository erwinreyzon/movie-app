class ChangeEnglishToBooleanMovies2 < ActiveRecord::Migration[7.0]
  def change
    change_column_null :movies, :english, true
  end
end
