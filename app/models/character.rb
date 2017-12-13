class Character < ApplicationRecord
    has_many :comments
    #validates :name, presence: true, length: { minimum: 3 }
    #validates_presence_of :background, :message => "It may be a mystery where they came from, but not so much so that there is nothing to put."
end
