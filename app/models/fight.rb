class Fight < ApplicationRecord
  validates :win_id, :lose_id, :win_class, :lose_class, presence: true

  def self.start(person = Person.where(lose: false).sample)

    dices = [1, 2, 3, 4, 5, 6]
    until person.lose
      characters = Character.find_all
      used_characters = UsedCharacter.ids
      character = characters.reject { |i| used_characters.include?(i.character_id) }.sample
      character_dice = 0
      person_dice =  0

      until character_dice != person_dice
        character_dice = dices.sample +  dices.sample
        person_dice =  dices.sample +  dices.sample
      end

      if character_dice > person_dice
        Fight.create(
          win_id: character.character_id,
          lose_id: person.id,
          win_class: character,
          lose_class: person
        )
        person.update(lose: true)
      else
        Fight.create(
          win_id: person.id,
          lose_id: character.character_id,
          win_class: person,
          lose_class: character
        )
      end
      UsedCharacter.create(
          id: character.character_id
      )
    end
  end

  def winner
    if win_class.include?("Person")
      winner = Person.find(win_id)
    else
      winner = Character.find(win_id)
    end
  end

  def loser
    if lose_class.include?("Person")
      loser = Person.find(lose_id)
    else
      loser = Character.find(lose_id)
    end
  end

  def person
    if win_class.include?("Person")
      person = Person.find(win_id)
    else
      person = Person.find(lose_id)
    end
  end

  def character
    if win_class.include?("Character")
      character = Character.find(win_id)
    else
      character = Character.find(lose_id)
    end
  end

end
