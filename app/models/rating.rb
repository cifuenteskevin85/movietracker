class Rating < ActiveRecord::Base
  attr_accessible :value, :movie_id, :user_id
<<<<<<< HEAD
=======
  after_save :update_movie_average_rating
>>>>>>> 81f09d6d55ab6e54b656957dca71e3f5563d4284

  belongs_to :user
  belongs_to :movie

  RATINGS = 1..10

  validates :movie_id, presence: true, uniqueness: {scope: :user_id}
  validates :user_id, presence: true
  validates :value, inclusion: { in: RATINGS }
<<<<<<< HEAD
=======

  def update_movie_average_rating
    movie.update_attribute(:average_rating, movie.ratings.average(:value).to_f)
  end
>>>>>>> 81f09d6d55ab6e54b656957dca71e3f5563d4284
end
