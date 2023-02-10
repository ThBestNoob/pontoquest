class Alternative < ApplicationRecord
  belongs_to :question
  has_many :answers

  has_many :agents, through: :answers
end
