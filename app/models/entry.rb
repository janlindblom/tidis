class Entry < ActiveRecord::Base
  belongs_to :category
  belongs_to :project
  belongs_to :user
end
