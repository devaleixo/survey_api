class SurveyAnswer < ApplicationRecord
  belongs_to :user
  belongs_to :survey
  belongs_to :user_answer
end
