class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :alternative
  belongs_to :agent
end
