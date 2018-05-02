class Serie
  attr_accessor :title, :serie_id, :description, :thumbnail

  def initialize(args)
    args.each do |key, value|
      instance_variable_set("@#{key}", value)
    end
  end

  def self.find_all
    series = []
    results = MarvelComunication.all_series
    results.each do |result|
      series << Serie.new(
        title: result['title'],
        serie_id: result['id'],
        thumbnail: result['thumbnail']['path']
      )
    end
    series
  end

  def self.find(id)
    results = MarvelComunication.serie(id)
    Serie.new(
      title: results['title'],
      description: results['description'],
      thumbnail: results['thumbnail']['path']
    )
  end

  def self.by_character(id)
    series = []
    results = MarvelComunication.character_series(id)
    results.each do |result|
      series << Serie.new(
        title: result['title'],
        serie_id: result['id'],
        thumbnail: result['thumbnail']['path']
      )
    end
    series
  end
end
