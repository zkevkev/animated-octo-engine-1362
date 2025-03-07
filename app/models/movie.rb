class Movie < ApplicationRecord
  belongs_to :studio
  has_many :actor_movies
  has_many :actors, through: :actor_movies

  def list_actors
    actors.order(:age).pluck(:name).to_sentence
  end

  def ave_actor_age
    actors.average(:age).to_s
  end
end
