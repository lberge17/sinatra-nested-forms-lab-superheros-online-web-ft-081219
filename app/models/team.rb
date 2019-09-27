class Team #< ActiveRecord::Base
  #has_many :members
  attr_accessor :name, :motto, :members
  @@all = []
  
  def initialize(:name, :motto)
    @name = name
    @motto = motto
    @members = []
    @@all << self
  end
  
  def self.all
    @@all
  end
end