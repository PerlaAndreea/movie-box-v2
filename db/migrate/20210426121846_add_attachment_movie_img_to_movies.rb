class AddAttachmentMovieImgToMovies < ActiveRecord::Migration[6.1]
  def self.up
    change_table :movies do |t|
      t.attachment :movie_img
    end
  end

  def self.down
    remove_attachment :movies, :movie_img
  end
end
