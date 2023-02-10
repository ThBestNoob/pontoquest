class Agent < ApplicationRecord
  belongs_to :team
  has_many :answers

  has_many :alternatives, through: :answers
  has_many :questions, through: :answers
end
