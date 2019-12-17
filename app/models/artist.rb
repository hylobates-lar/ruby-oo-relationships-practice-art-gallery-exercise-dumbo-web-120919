class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  def self.all 
    @@all
  end

  def all_paintings
    Painting.all.select do |painting_instance|
      painting_instance.artist == self 
    end
  end

  def all_galleries
    self.all_paintings.map do |painting_instance|
      painting_instance.gallery
    end
  end

  def all_cities
    self.all_galleries.map do |gallery|
      gallery.city
    end
  end

  def self.total_experience
    total = 0

    self.all.map do |artist|
      total += artist.years_experience
    end
    total 
  end

  def self.most_prolific
    self.all.max_by do |artist|
      artist.paintings.length / artist.years_experience
    end 
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
