class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    Show.where(show.id == self.id).joins(:actors, :characters).pluck("actors.first_name, actors.last_name").first.join(" ")
  end
end
