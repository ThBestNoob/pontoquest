class Answer < ApplicationRecord
  belongs_to :agent
  belongs_to :question
  belongs_to :alternative
end
