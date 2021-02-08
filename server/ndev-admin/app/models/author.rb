require 'json'

class Author < ApplicationRecord
    # id
    # login
    # name
    # password
    # active
    # created_at
    # updated_at

    scope :active, lambda {where(:active => true)}
    scope :inactive, lambda {where(:active => false)}
    scope :sorted, lambda {order("name ASC")}
    scope :search, lambda {|query| where(["name like ? or login like ?", "%#(query)%"])}

    # connect notes
    has_many :author_note_joins
    has_many :notes, :through => :author_note_joins

#    def as_json
#        {
#            id: @id,
#            login: @login,
#            name: @name,
#            passwort: @passwort,
#            active: @active,
#            created_at: @created_at,
#            updated_at: @updated_at
#        }
#    end
#
#    def to_json(*options)
#        as_json(*options).to_json(*options)
#    end
end
