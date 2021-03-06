class MarvelComunication
  include HTTParty
  base_uri 'gateway.marvel.com'

  def self.character(id)
    response = self.get("/v1/public/characters/#{id}?#{MarvelConsult.credentials}")
    response_body = JSON.parse(response.body)
    results = response_body['data']['results'][0]
  end

  def self.character_comics(id)
    response = self.get("/v1/public/characters/#{id}/comics?#{MarvelConsult.credentials}")
    response_body = JSON.parse(response.body)
    results = response_body['data']['results']
  end

  def self.character_events(id)
    response = self.get("/v1/public/characters/#{id}/events?#{MarvelConsult.credentials}")
    response_body = JSON.parse(response.body)
    results = response_body['data']['results']
  end

  def self.character_series(id)
    response = self.get("/v1/public/characters/#{id}/series?#{MarvelConsult.credentials}")
    response_body = JSON.parse(response.body)
    results = response_body['data']['results']
  end

  def self.all_characters
    response = self.get("/v1/public/characters?#{MarvelConsult.credentials}")
    response_body = JSON.parse(response.body)
    results = response_body['data']['results']
  end

  def self.comic(id)
    response = self.get("/v1/public/comics/#{id}?#{MarvelConsult.credentials}")
    response_body = JSON.parse(response.body)
    puts "RESPONSE BODY: #{response_body}"
    results = response_body['data']['results'][0]
  end

  def self.all_comics
    response = self.get("/v1/public/comics?#{MarvelConsult.credentials}")
    response_body = JSON.parse(response.body)
    results = response_body['data']['results']
  end

  def self.event(id)
    response = self.get("/v1/public/events/#{id}?#{MarvelConsult.credentials}")
    response_body = JSON.parse(response.body)
    results = response_body['data']['results'][0]
  end

  def self.all_events
    response = self.get("/v1/public/events?#{MarvelConsult.credentials}")
    response_body = JSON.parse(response.body)
    results = response_body['data']['results']
  end

  def self.serie(id)
    response = self.get("/v1/public/series/#{id}?#{MarvelConsult.credentials}")
    response_body = JSON.parse(response.body)
    results = response_body['data']['results'][0]
  end

  def self.all_series
    response = self.get("/v1/public/series?#{MarvelConsult.credentials}")
    response_body = JSON.parse(response.body)
    results = response_body['data']['results']
  end

end
