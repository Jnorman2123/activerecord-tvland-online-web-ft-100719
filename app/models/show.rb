class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    Show.joins(:characters, :actors).pluck("actors.first_name")
  end
end
