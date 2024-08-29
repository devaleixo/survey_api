class Question < ApplicationRecord
  belongs_to :survey
  belongs_to :type
end
