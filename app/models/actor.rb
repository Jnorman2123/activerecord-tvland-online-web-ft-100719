class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    Actor.pluck(:first_name, :last_name).first.join(" ")
  end

  def list_roles
    self.character.name
  end
end
