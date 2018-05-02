class Event
  attr_accessor :title, :event_id, :description, :thumbnail

  def initialize(args)
    args.each do |key, value|
      instance_variable_set("@#{key}", value)
    end
  end

  def self.find_all
    events = []
    results = MarvelComunication.all_events
    results.each do |result|
      events << Event.new(
        title: result['title'],
        event_id: result['id'],
        thumbnail: result['thumbnail']['path']
      )
    end
    events
  end

  def self.find(id)
    results = MarvelComunication.event(id)
    Event.new(
      title: results['title'],
      description: results['description'],
      thumbnail: results['thumbnail']['path']
    )
  end

  def self.by_character(id)
    events = []
    results = MarvelComunication.character_events(id)
    results.each do |result|
      events << Event.new(
        title: result['title'],
        event_id: result['id'],
        thumbnail: result['thumbnail']['path']
      )
    end
    events
  end
end
