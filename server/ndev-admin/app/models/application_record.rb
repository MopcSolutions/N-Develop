class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  
  # scopes for all records
  scope :newest_first, lambda {order("created_at DESC")}  
end
