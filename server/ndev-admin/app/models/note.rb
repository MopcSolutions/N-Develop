class Note < ApplicationRecord

    # connect author
    has_many :author_note_joins # rich join
    has_many :authors, :through => :author_note_joins

    # connect stories
    has_and_belongs_to_many :stories # simple join
end
