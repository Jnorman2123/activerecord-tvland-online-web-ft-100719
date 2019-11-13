class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list

    related_show = Show.joins(:actors, :characters).where(characters: {id: id})
    name_array = related_show.pluck("actors.first_name, actors.last_name")
    p "#{name_array}.first.join(" ")"
  end
end
