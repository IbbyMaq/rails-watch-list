class RemoveMovieUrlFromMovies < ActiveRecord::Migration[6.1]
  def change
    remove_column :movies, :movie_url, :string
  end
end
