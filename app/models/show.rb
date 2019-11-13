class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    related_show = Show.joins(:actors, :characters).where(:id ?, "#{self}")
    .pluck("actors.first_name, actors.last_name").first.join(" ")
  end
end
