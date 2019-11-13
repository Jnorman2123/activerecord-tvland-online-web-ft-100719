class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list

    related_show = Show.joins(:actors, :characters).where(characters: {id: id})
    name = related_show.pluck("actors.first_name, actors.last_name").first.join(" ")
    p "1. #{name}"
  end
end
