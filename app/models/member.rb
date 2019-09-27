class Member #< ActiveRecord::Base
  #belongs_to :team
  attr_accessor :name, :power, :bio, :team
  @@all = []
  
  def initialize(:name, :power, :bio)
    @name = name
    @power = power
    @bio = bio
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end