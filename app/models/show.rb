class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    Show.joins(:actors, :characters).pluck("actors.first_name, actors.last_name")
  end
end
