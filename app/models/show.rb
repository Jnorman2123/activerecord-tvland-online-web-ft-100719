class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    binding.pry
    self.actors.collect do |actor|
      actors.full_name
    end
  end
end
