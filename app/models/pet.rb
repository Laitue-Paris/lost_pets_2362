class Pet < ApplicationRecord
  SPECIES = [ "chien", "chat", "lapin", "aligator", "oiseaux" ]

  validates :name, presence: true
  validates :species, inclusion: {in: SPECIES}

  def found_days_ago
    if found_on
      (Date.today - found_on).to_i
    end
  end
end
