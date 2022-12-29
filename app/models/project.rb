class Project < ApplicationRecord
  belongs_to :user
  has_many :tasks

  enum status: [:accepted, :declined, :pending, :done]

  def hours_in_days
	days = time_target / 6
	hours_left = time_target % 6

	return hours_left != 0 ? "#{days} days and #{hours_left} hours" : "#{days} days"
  end
end
