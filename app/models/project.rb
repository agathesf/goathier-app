class Project < ApplicationRecord
  belongs_to :user
  has_many :tasks

  # useless ? 
  STATUS = ["Accepted", "Declined", "Pending", "Done & paid"]
end
