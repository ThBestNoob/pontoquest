class Question < ApplicationRecord
    has_many :alternatives
    has_many :answers

    has_many :agents, through: :answers

    accepts_nested_attributes_for :alternatives, limit: 4, reject_if: :all_blank, allow_destroy: true

    validates :text, :category, presence: true
end
