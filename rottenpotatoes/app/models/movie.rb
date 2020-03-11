class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  
  def self.similar(director)
    return nil if director.nil?
    self.where(director: director)
  end
  
  
end
