class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    Show.join(:characters, :actors).select(actors.first_name)
  end
end
