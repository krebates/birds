class Spotting < ActiveRecord::Base

  validates_presence_of :bird_name
  validates_presence_of :spotted_by
  validates_presence_of :location

  def self.bird_count(bird_name)
  where(bird_name: bird_name).count
  end
end
