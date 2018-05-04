class UsedCharacter < ApplicationRecord
  def self.empty
    UsedCharacter.destroy_all
  end
end
