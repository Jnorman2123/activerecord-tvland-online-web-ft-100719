class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    Actor.pluck(:first_name, :last_name).first.join(" ")
  end

  def list_roles
    Actor.joins(:characters, :shows).pluck("characters.name, shows.name")
  end
end
