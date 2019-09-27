class Team #< ActiveRecord::Base
  #has_many :members
  attr_accessor :name, :motto
  @@all = []
  
  def initialize(:name, :motto)
    @name = name
    @motto = motto
    @@all << self
  end
end