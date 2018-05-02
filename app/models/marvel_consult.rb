class MarvelConsult

  def self.digest
    Digest::MD5.hexdigest( "#{DateTime.now.to_s}#{ENV['MARVEL_PRIVATE_KEY']}#{ENV['MARVEL_PUBLIC_KEY']}" )
  end

  def self.credentials
    "ts=#{DateTime.now.to_s}&apikey=#{ENV['MARVEL_PUBLIC_KEY']}&hash=#{MarvelConsult.digest}"
  end
end
