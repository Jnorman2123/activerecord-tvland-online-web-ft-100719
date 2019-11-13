class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list

    related_show = Show.joins(:actors, :characters).where(characters: {id: id})
    related_show.pluck("shows.name")
  end
end
