class Comic
  attr_accessor :comic_id, :title, :description, :thumbnail, :url

  def initialize(args)
    args.each do |key, value|
      instance_variable_set("@#{key}", value)
    end
  end

  def self.find_all
    comics = []
    results = MarvelComunication.all_comics
    results.each do |result|
      comics << Comic.new(
        comic_id: result['id'],
        title: result['title'],
        description: result['description'],
        thumbnail: result['thumbnail']['path']
      )
    end
    comics
  end

  def self.find(id)
    results = MarvelComunication.comic(id)
    Comic.new(
      title: results['title'],
      description: results['description'],
      thumbnail: results['thumbnail']['path'],
      url: results['urls'][0]['url']
    )
  end

  def self.by_character(id)
    comics = []
    results = MarvelComunication.character_comics(id)
    results.each do |result|
      comics << Comic.new(
        comic_id: result['id'],
        title: result['title'],
        description: result['description'],
        thumbnail: result['thumbnail']['path']
      )
    end
    comics
  end
end
