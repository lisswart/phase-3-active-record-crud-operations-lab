class Movie < ActiveRecord::Base
  # a movie instance can be instantiated with a hash of attributes

  # CREATE
  def self.create_with_title(title)
    # saves the title to the movie
    # creates a new record in the database
    Movie.create(title: title)
  end

  # READ
  def self.first_movie
    # returns the first item in the movies table
    Movie.first
  end

  def self.last_movie
    # returns the last item in the movies table
    Movie.last
  end

  def self.movie_count
    # returns the number of items in the movies table
    Movie.count
  end

  def self.find_movie_with_id(id)
    Movie.find(id)
  end

  def self.find_movie_with_attributes(attributes)
    Movie.find_by(attributes)
  end

  def self.find_movies_after_2002
    Movie.where("release_date > 2002")
  end

  def update_with_attributes(attributes)
    self.update(attributes)
  end

  def self.update_all_titles(title)
    Movie.update_all(title: title)
  end

  def self.delete_by_id(id)
    Movie.delete(id)
  end

  def self.delete_all_movies
    Movie.destroy_all
  end

end