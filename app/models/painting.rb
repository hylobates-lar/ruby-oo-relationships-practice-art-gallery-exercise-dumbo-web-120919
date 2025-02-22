class Painting

  attr_reader :artist
  attr_accessor :title, :price, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery

    @@all << self 
  end

  def self.all 
    @@all
  end

  def self.total_price
    total = 0
    self.all.map do |painting|
      total += painting.price 
    end
    total 
  end

end
