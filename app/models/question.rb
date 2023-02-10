class Question < ApplicationRecord
    has_many :alternatives
    has_many :answers

    has_many :agents, through: :answers
end
