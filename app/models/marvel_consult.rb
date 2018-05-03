class MarvelConsult
  def self.public_key
    "b161d7f95939418c7e609acdc2e7bde6"
  end

  def self.private_key
    "c76a7bd70528111f5643f3bfea2e99d96ca83438"
  end

  def self.timestamp
    timestamp = DateTime.now.to_s
  end

  def self.digest
    Digest::MD5.hexdigest("#{timestamp}#{private_key}#{public_key}")
  end

  def self.credentials
    "ts=#{MarvelConsult.timestamp}&apikey=#{MarvelConsult.public_key}&hash=#{MarvelConsult.digest}"
  end
end
