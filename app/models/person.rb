class Person < ApplicationRecord
  mount_uploader :img, ImageUploader

  def wins
    wins = Fight.where(win_id: self.id).count
  end

  def loses
    wins = Fight.where(lose_id: self.id).count
  end

end
