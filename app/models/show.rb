class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    binding.pry
    name = self.joins(:characters, :actors).pluck("actors.first_name, actors.last_name").first.join(" ")
  end
end
