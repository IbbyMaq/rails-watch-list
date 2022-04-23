class AddPosterUrlToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :movie_url, :string
  end
end
