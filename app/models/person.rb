class Person < ApplicationRecord
  has_many :fights, dependent: :destroy
end
